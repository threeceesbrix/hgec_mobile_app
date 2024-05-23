import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.logger.dart';
import 'package:hgec_mobile_app/models/sqlite/user_info.dart';
import 'package:hgec_mobile_app/services/http_service_service.dart';
import 'package:hgec_mobile_app/services/sqlite_service.dart';

final log = getLogger('MeetingService');

class MeetingService {
  Future<Map<String, dynamic>> meetingListGet() async {
    int statusCode = 500;
    Map<String, dynamic> resp = {};
    try {
      log.d('meetingListGet : started');

      final apiService = locator<HttpService>();
      final databaseService = locator<SqliteService>();
      final SqlUserInfo? userInfo = await databaseService.getUserInfo(1);

      Map<String, dynamic> inputData = {"source_type": "mobile"};
      Map<String, String> headerData = {
        "access-token": userInfo!.accesstoken,
        "refresh-token": userInfo.refreshtoken,
      };

      log.d('Input data : $inputData');

      final meetingListResp = await apiService.postRequest(
          requestName: 'meetingInfoGet',
          inputData: inputData,
          headerData: headerData);

      log.d('meetingListGet response : $meetingListResp');

      statusCode = meetingListResp['statusCode'];

      if (statusCode == 401) {
        //Delete user info. Yet to do
      } else if (statusCode == 200 || statusCode == 404) {
        if (meetingListResp['accessTokenFlag']) {
          log.d('meetingListGet - Token expired');
          final SqlUserInfo userInfoRefresh = SqlUserInfo.fromMap({
            "id": 1,
            "userid": userInfo!.userid,
            "username": userInfo.username,
            "accesstoken": meetingListResp['accessToken'],
            "refreshtoken": meetingListResp['refreshToken'],
          });

          //Update user info with new token. Yet to do
        }
        resp = {
          "statusCode": statusCode,
          "meetingList": meetingListResp['resultData']['meetingList'],
        };
      } else {
        resp = {
          "statusCode": statusCode,
          "message": meetingListResp['errorDesc'],
        };
      }
    } catch (error) {
      log.e('meetingListGet : $error');
      resp = {
        "statusCode": statusCode,
        "message": "Internal server error. Please try again."
      };
    }
    return resp;
  }
}
