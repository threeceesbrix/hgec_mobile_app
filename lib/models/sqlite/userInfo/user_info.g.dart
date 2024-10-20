// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SqlUserInfoImpl _$$SqlUserInfoImplFromJson(Map<String, dynamic> json) =>
    _$SqlUserInfoImpl(
      accesstoken: json['accesstoken'] as String,
      devicetoken: json['devicetoken'] as String?,
      id: (json['id'] as num?)?.toInt(),
      refreshtoken: json['refreshtoken'] as String,
      userid: (json['userid'] as num).toInt(),
      username: json['username'] as String,
    );

Map<String, dynamic> _$$SqlUserInfoImplToJson(_$SqlUserInfoImpl instance) =>
    <String, dynamic>{
      'accesstoken': instance.accesstoken,
      'devicetoken': instance.devicetoken,
      'id': instance.id,
      'refreshtoken': instance.refreshtoken,
      'userid': instance.userid,
      'username': instance.username,
    };
