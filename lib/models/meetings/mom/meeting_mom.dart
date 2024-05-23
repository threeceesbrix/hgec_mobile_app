import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_mom.freezed.dart';
part 'meeting_mom.g.dart';

@freezed
class MeetingMOM with _$MeetingMOM {
  factory MeetingMOM({
    @JsonKey(name: 'mom_id') required int momId,
    @JsonKey(name: 'meeting_id') required int meetingId,
    @JsonKey(name: 'mom_topic') required String momTopic,
    @JsonKey(name: 'mom_desc') String? momDesc,
    @JsonKey(name: 'mom_type') required String momType,
    @JsonKey(name: 'mom_action_by') String? momActionBy,
    @JsonKey(name: 'mom_action_due_date') DateTime? momActionDueDate,
    @JsonKey(name: 'mom_action_status') String? momActionStatus,
    @JsonKey(name: 'created_date') DateTime? createdDate,
    @JsonKey(name: 'created_user_id') int? createdUserId,
    @JsonKey(name: 'modified_date') DateTime? modifiedDate,
    @JsonKey(name: 'modified_user_id') int? modifiedUserId,
  }) = _MeetingMOM;

  factory MeetingMOM.fromJson(Map<String, dynamic> json) =>
      _$MeetingMOMFromJson(json);
}
