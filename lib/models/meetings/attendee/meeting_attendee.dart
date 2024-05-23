import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_attendee.freezed.dart';
part 'meeting_attendee.g.dart';

@freezed
class MeetingAttendee with _$MeetingAttendee {
  factory MeetingAttendee({
    @JsonKey(name: 'attendee_id') required int attendeeId,
    @JsonKey(name: 'meeting_id') required int meetingId,
    @JsonKey(name: 'employee_id') required int employeeId,
    @JsonKey(name: 'attendee_name') String? attendeeName,
    @JsonKey(name: 'attendee_designation') String? attendeeDesignation,
    @JsonKey(name: 'attendee_company_name') String? attendeeCompanyName,
    @JsonKey(name: 'attende_mobile_no') String? attendeeMobileNo,
    @JsonKey(name: 'attendee_email') String? attendeeEmail,
    @JsonKey(name: 'attendance_flg') required int attendanceFlag,
    @JsonKey(name: 'created_date') DateTime? createdDate,
    @JsonKey(name: 'created_user_id') int? createdUserId,
  }) = _MeetingAttendee;

  factory MeetingAttendee.fromJson(Map<String, dynamic> json) =>
      _$MeetingAttendeeFromJson(json);
}
