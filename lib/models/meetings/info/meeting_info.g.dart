// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingInfoImpl _$$MeetingInfoImplFromJson(Map<String, dynamic> json) =>
    _$MeetingInfoImpl(
      meetingId: (json['meeting_id'] as num).toInt(),
      meetingBid: json['meeting_bid'] as String,
      meetingTitle: json['meeting_title'] as String,
      meetingTypeId: (json['meeting_type_id'] as num).toInt(),
      meetingDate: DateTime.parse(json['meeting_date'] as String),
      meetingStartTime: timeFromJson(json['meeting_start_time'] as String),
      meetingEndTime: timeFromJson(json['meeting_end_time'] as String),
      projectId: (json['project_id'] as num).toInt(),
      meetingLocation: json['meeting_location'] as String?,
      createdDate: json['created_date'] == null
          ? null
          : DateTime.parse(json['created_date'] as String),
      createdUserId: (json['created_user_id'] as num?)?.toInt(),
      modifiedDate: json['modified_date'] == null
          ? null
          : DateTime.parse(json['modified_date'] as String),
      modifiedUserId: (json['modified_user_id'] as num?)?.toInt(),
      agendaList: (json['agendaList'] as List<dynamic>?)
          ?.map((e) => MeetingAgenda.fromJson(e as Map<String, dynamic>))
          .toList(),
      attendeesList: (json['attendeesList'] as List<dynamic>?)
          ?.map((e) => MeetingAttendee.fromJson(e as Map<String, dynamic>))
          .toList(),
      momList: (json['momList'] as List<dynamic>?)
          ?.map((e) => MeetingMOM.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MeetingInfoImplToJson(_$MeetingInfoImpl instance) =>
    <String, dynamic>{
      'meeting_id': instance.meetingId,
      'meeting_bid': instance.meetingBid,
      'meeting_title': instance.meetingTitle,
      'meeting_type_id': instance.meetingTypeId,
      'meeting_date': instance.meetingDate.toIso8601String(),
      'meeting_start_time': timeToJson(instance.meetingStartTime),
      'meeting_end_time': timeToJson(instance.meetingEndTime),
      'project_id': instance.projectId,
      'meeting_location': instance.meetingLocation,
      'created_date': instance.createdDate?.toIso8601String(),
      'created_user_id': instance.createdUserId,
      'modified_date': instance.modifiedDate?.toIso8601String(),
      'modified_user_id': instance.modifiedUserId,
      'agendaList': instance.agendaList,
      'attendeesList': instance.attendeesList,
      'momList': instance.momList,
    };
