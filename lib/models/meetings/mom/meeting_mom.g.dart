// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_mom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingMOMImpl _$$MeetingMOMImplFromJson(Map<String, dynamic> json) =>
    _$MeetingMOMImpl(
      momId: (json['mom_id'] as num).toInt(),
      meetingId: (json['meeting_id'] as num).toInt(),
      momTopic: json['mom_topic'] as String,
      momDesc: json['mom_desc'] as String?,
      momType: json['mom_type'] as String,
      momActionBy: json['mom_action_by'] as String?,
      momActionDueDate: json['mom_action_due_date'] == null
          ? null
          : DateTime.parse(json['mom_action_due_date'] as String),
      momActionStatus: json['mom_action_status'] as String?,
      createdDate: json['created_date'] == null
          ? null
          : DateTime.parse(json['created_date'] as String),
      createdUserId: (json['created_user_id'] as num?)?.toInt(),
      modifiedDate: json['modified_date'] == null
          ? null
          : DateTime.parse(json['modified_date'] as String),
      modifiedUserId: (json['modified_user_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MeetingMOMImplToJson(_$MeetingMOMImpl instance) =>
    <String, dynamic>{
      'mom_id': instance.momId,
      'meeting_id': instance.meetingId,
      'mom_topic': instance.momTopic,
      'mom_desc': instance.momDesc,
      'mom_type': instance.momType,
      'mom_action_by': instance.momActionBy,
      'mom_action_due_date': instance.momActionDueDate?.toIso8601String(),
      'mom_action_status': instance.momActionStatus,
      'created_date': instance.createdDate?.toIso8601String(),
      'created_user_id': instance.createdUserId,
      'modified_date': instance.modifiedDate?.toIso8601String(),
      'modified_user_id': instance.modifiedUserId,
    };
