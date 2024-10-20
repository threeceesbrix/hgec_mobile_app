import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

const String colId = 'id';
const String colUserId = 'userid';
const String colUserName = 'username';
const String colAccessToken = 'accesstoken';
const String colRefreshToken = 'refreshtoken';
const String colDeviceToken = 'devicetoken';

@freezed
class SqlUserInfo with _$SqlUserInfo {
  factory SqlUserInfo({
    required String accesstoken,
    String? devicetoken,
    int? id,
    required String refreshtoken,
    required int userid,
    required String username,
  }) = _SqlUserInfo;

  factory SqlUserInfo.fromJson(Map<String, dynamic> json) =>
      _$SqlUserInfoFromJson(json);

  factory SqlUserInfo.fromMap(Map<String, dynamic> map) => SqlUserInfo(
        id: map[colId] as int?,
        userid: map[colUserId] as int,
        username: map[colUserName] as String,
        accesstoken: map[colAccessToken] as String,
        refreshtoken: map[colRefreshToken] as String,
        devicetoken: map[colDeviceToken] as String?,
      );
}

extension SqlUserInfoExtension on SqlUserInfo {
  Map<String, Object?> toMap() {
    return {
      colId: id,
      colUserId: userid,
      colUserName: username,
      colAccessToken: accesstoken,
      colRefreshToken: refreshtoken,
      colDeviceToken: devicetoken,
    };
  }
}
