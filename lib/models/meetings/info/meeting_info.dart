import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hgec_mobile_app/models/meetings/agenda/meeting_agenda.dart';
import 'package:hgec_mobile_app/models/meetings/attendee/meeting_attendee.dart';
import 'package:hgec_mobile_app/models/meetings/mom/meeting_mom.dart';
import 'package:hgec_mobile_app/ui/common/time_convert.dart';

part 'meeting_info.freezed.dart';
part 'meeting_info.g.dart';

@freezed
class MeetingInfo with _$MeetingInfo {
  factory MeetingInfo({
    @JsonKey(name: 'meeting_id') required int meetingId,
    @JsonKey(name: 'meeting_bid') required String meetingBid,
    @JsonKey(name: 'meeting_title') required String meetingTitle,
    @JsonKey(name: 'meeting_type_id') required int meetingTypeId,
    @JsonKey(name: 'meeting_date') required DateTime meetingDate,
    @JsonKey(
        name: 'meeting_start_time', fromJson: timeFromJson, toJson: timeToJson)
    TimeOfDay? meetingStartTime,
    @JsonKey(
        name: 'meeting_end_time', fromJson: timeFromJson, toJson: timeToJson)
    TimeOfDay? meetingEndTime,
    @JsonKey(name: 'project_id') required int projectId,
    @JsonKey(name: 'meeting_location') String? meetingLocation,
    @JsonKey(name: 'created_date') DateTime? createdDate,
    @JsonKey(name: 'created_user_id') int? createdUserId,
    @JsonKey(name: 'modified_date') DateTime? modifiedDate,
    @JsonKey(name: 'modified_user_id') int? modifiedUserId,
    @JsonKey(name: 'agendaList') List<MeetingAgenda>? agendaList,
    @JsonKey(name: 'attendeesList') List<MeetingAttendee>? attendeesList,
    @JsonKey(name: 'momList') List<MeetingMOM>? momList,
  }) = _MeetingInfo;

  factory MeetingInfo.fromJson(Map<String, dynamic> json) =>
      _$MeetingInfoFromJson(json);
}
