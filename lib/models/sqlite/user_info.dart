const String colId = 'id';
const String colUserId = 'userid';
const String colUserName = 'username';
const String colAccessToken = 'accesstoken';
const String colRefreshToken = 'refreshtoken';
const String colDeviceToken = 'devicetoken';

class SqlUserInfo {
  late String accesstoken;
  String? devicetoken;
  int? id;
  late String refreshtoken;
  late int userid;
  late String username;

  Map<String, Object> toMap() {
    var map = <String, Object>{
      colUserId: userid,
      colUserName: username,
      colAccessToken: accesstoken,
      colRefreshToken: refreshtoken,
      colDeviceToken: devicetoken ?? ''
    };
    if (id != null) {
      map[colId] = id ?? 0;
    }
    return map;
  }

  SqlUserInfo();

  SqlUserInfo.fromMap(Map<dynamic, dynamic> map) {
    id = map[colId];
    userid = map[colUserId];
    username = map[colUserName];
    accesstoken = map[colAccessToken];
    refreshtoken = map[colRefreshToken];
    devicetoken = map[colDeviceToken];
  }

  @override
  String toString() {
    return '{User id: $userid, Username: $username}, Access token: $accesstoken, Refresh token: $refreshtoken, Device token: $devicetoken';
  }
}
