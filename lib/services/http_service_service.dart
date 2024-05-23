import 'dart:async';
import 'dart:convert';

import 'package:hgec_mobile_app/app/app.logger.dart';
import 'package:hgec_mobile_app/routes/api_route.dart';
import 'package:http/http.dart' as http;

final log = getLogger('HttpService');

class HttpService {
  Future<Map<String, dynamic>> postRequest(
      {required String requestName,
      Map<String, String>? headerData,
      Map<String, dynamic>? inputData}) async {
    Map<String, dynamic> response = {};
    int retryCount = 0;
    try {
      log.d('postRequest - started');
      String endPoint = 'http://192.168.1.6:3001';
      String urlPath = urlPathConfig[requestName] ?? '';

      Map<String, String> headers = {
        'Content-Type': 'application/json',
      };

      if (headerData != null) {
        headers.addAll(headerData);
      }

      String uri = '$endPoint/$urlPath';
      log.v('postRequest - URI : $uri');

      while (retryCount < 3) {
        log.v('postRequest - API Attempt : ${retryCount + 1}');
        try {
          final resp = await http
              .post(
            Uri.parse(uri),
            headers: headers,
            body: json.encode(inputData),
          )
              .timeout(
            const Duration(seconds: 30),
            onTimeout: () {
              throw TimeoutException(
                  'The connection has timed out, Please try again!');
            },
          );
          log.v('postRequest - API response : $resp');

          response = json.decode(resp.body);
          if (response["statusCode"] == 503) {
            ++retryCount;
          } else {
            retryCount = 3;
          }
        } catch (error) {
          log.e('postRequest - error $error');
          ++retryCount;
          if (retryCount == 3) {
            throw Exception(error);
          }
        }
      }
      log.d('postRequest - completed');
    } catch (error) {
      log.e('postRequest error $error');
      response = {"statusCode": 500, "errorMessage": error};
    }
    return response;
  }
}
