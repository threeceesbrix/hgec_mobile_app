// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting_attendee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingAttendeeImpl _$$MeetingAttendeeImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingAttendeeImpl(
      attendeeId: (json['attendee_id'] as num).toInt(),
      meetingId: (json['meeting_id'] as num).toInt(),
      employeeId: (json['employee_id'] as num).toInt(),
      attendeeName: json['attendee_name'] as String?,
      attendeeDesignation: json['attendee_designation'] as String?,
      attendeeCompanyName: json['attendee_company_name'] as String?,
      attendeeMobileNo: json['attende_mobile_no'] as String?,
      attendeeEmail: json['attendee_email'] as String?,
      attendanceFlag: (json['attendance_flg'] as num).toInt(),
      createdDate: json['created_date'] == null
          ? null
          : DateTime.parse(json['created_date'] as String),
      createdUserId: (json['created_user_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MeetingAttendeeImplToJson(
        _$MeetingAttendeeImpl instance) =>
    <String, dynamic>{
      'attendee_id': instance.attendeeId,
      'meeting_id': instance.meetingId,
      'employee_id': instance.employeeId,
      'attendee_name': instance.attendeeName,
      'attendee_designation': instance.attendeeDesignation,
      'attendee_company_name': instance.attendeeCompanyName,
      'attende_mobile_no': instance.attendeeMobileNo,
      'attendee_email': instance.attendeeEmail,
      'attendance_flg': instance.attendanceFlag,
      'created_date': instance.createdDate?.toIso8601String(),
      'created_user_id': instance.createdUserId,
    };
