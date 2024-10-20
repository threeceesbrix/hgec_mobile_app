import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.logger.dart';
import 'package:hgec_mobile_app/models/sqlite/userInfo/user_info.dart';
import 'package:hgec_mobile_app/services/http_service_service.dart';
import 'package:hgec_mobile_app/services/sqlite_service.dart';

final log = getLogger('MeetingService');

class MeetingService {
  final HttpService _apiService = locator<HttpService>();
  final SqliteService _databaseService = locator<SqliteService>();

  Future<Map<String, dynamic>> _getMeetingData(String requestName) async {
    final SqlUserInfo? userInfo = await _databaseService.getUserInfo(1);
    if (userInfo == null) return _errorResponse(500, "User info not found");

    final inputData = {"source_type": "mobile"};
    final headerData = {
      "access-token": userInfo.accesstoken,
      "refresh-token": userInfo.refreshtoken,
    };

    try {
      final response = await _apiService.postRequest(
        requestName: requestName,
        inputData: inputData,
        headerData: headerData,
      );

      final statusCode = response['statusCode'];
      if (statusCode == 401) {
        // Handle token expiration
        // await _databaseService.deleteUserInfo(userInfo.id);
        return _errorResponse(statusCode, "Unauthorized");
      }

      if (response['accessTokenFlag']) {
        final SqlUserInfo updatedUserInfo = userInfo.copyWith(
          accesstoken: response['accessToken'],
          refreshtoken: response['refreshToken'],
        );
        // Update user info with new token
        // await _databaseService.updateUserInfo(updatedUserInfo);
      }

      return {
        "statusCode": statusCode,
        if (statusCode == 200)
          "data": response['resultData']
        else
          "message": response['errorDesc'],
      };
    } catch (error) {
      log.e('Error in $requestName: $error');
      return _errorResponse(500, "Internal server error. Please try again.");
    }
  }

  Map<String, dynamic> _errorResponse(int statusCode, String message) => {
        "statusCode": statusCode,
        "message": message,
      };

  Future<Map<String, dynamic>> meetingListGet() =>
      _getMeetingData('meetingInfoGet');
  Future<Map<String, dynamic>> meetingTypeGet() =>
      _getMeetingData('meetingTypeGet');
}
