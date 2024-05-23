// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_agenda.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingAgendaImpl _$$MeetingAgendaImplFromJson(Map<String, dynamic> json) =>
    _$MeetingAgendaImpl(
      meetingAgendaId: (json['meeting_agenda_id'] as num).toInt(),
      meetingId: (json['meeting_id'] as num).toInt(),
      meetingAgenda: json['meeting_agenda'] as String,
      createdDate: DateTime.parse(json['created_date'] as String),
      createdUserId: (json['created_user_id'] as num).toInt(),
    );

Map<String, dynamic> _$$MeetingAgendaImplToJson(_$MeetingAgendaImpl instance) =>
    <String, dynamic>{
      'meeting_agenda_id': instance.meetingAgendaId,
      'meeting_id': instance.meetingId,
      'meeting_agenda': instance.meetingAgenda,
      'created_date': instance.createdDate.toIso8601String(),
      'created_user_id': instance.createdUserId,
    };
