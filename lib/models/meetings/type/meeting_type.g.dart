// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingTypeImpl _$$MeetingTypeImplFromJson(Map<String, dynamic> json) =>
    _$MeetingTypeImpl(
      meetingTypeId: (json['meeting_type_id'] as num).toInt(),
      meetingTypeName: json['meeting_type_name'] as String,
    );

Map<String, dynamic> _$$MeetingTypeImplToJson(_$MeetingTypeImpl instance) =>
    <String, dynamic>{
      'meeting_type_id': instance.meetingTypeId,
      'meeting_type_name': instance.meetingTypeName,
    };
