import 'dart:io';

import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.logger.dart';
import 'package:hgec_mobile_app/models/sqlite/user_info.dart';
import 'package:hgec_mobile_app/services/http_service_service.dart';
import 'package:hgec_mobile_app/services/sqlite_service.dart';

final log = getLogger('LoginService');

class LoginService {
  Future<Map<String, dynamic>> login(
      {required String userName, required String password}) async {
    int statusCode = 500;
    Map<String, dynamic> resp = {};
    try {
      log.d('Login : started');

      final apiService = locator<HttpService>();
      final databaseService = locator<SqliteService>();

      Map<String, dynamic> inputData = {
        "userName": userName,
        "password": password,
        "deviceOs": Platform.isAndroid ? 'android' : 'ios',
        "sessionId": 1,
        "sourceType": "mobile"
      };

      log.d('Input data : $inputData');

      final loginResp = await apiService.postRequest(
          requestName: 'login', inputData: inputData);

      log.d('Login response : $loginResp');

      statusCode = loginResp['statusCode'];

      if (statusCode == 200) {
        var userData = loginResp['resultData'];

        SqlUserInfo userInfo = SqlUserInfo.fromMap(
          {
            "id": 1,
            "userid": userData['userId'],
            "username": userData['userName'],
            "accesstoken": loginResp['accessToken'],
            "refreshtoken": loginResp['refreshToken'],
          },
        );

        await databaseService.deleteUserInfo(1);
        await databaseService.insertUserInfo(userInfo);

        resp = {
          "statusCode": statusCode,
          "username": userData['userName'],
        };
      } else {
        resp = {
          "statusCode": statusCode,
          "message": loginResp['errorDesc'],
        };
      }
    } catch (error) {
      log.e('Login : $error');
      resp = {
        "statusCode": statusCode,
        "message": "Internal server error. Please try again."
      };
    }
    return resp;
  }
}
