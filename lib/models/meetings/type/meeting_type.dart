import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_type.freezed.dart';
part 'meeting_type.g.dart';

@freezed
class MeetingType with _$MeetingType {
  factory MeetingType({
    @JsonKey(name: 'meeting_type_id') required int meetingTypeId,
    @JsonKey(name: 'meeting_type_name') required String meetingTypeName,
  }) = _MeetingType;

  factory MeetingType.fromJson(Map<String, dynamic> json) =>
      _$MeetingTypeFromJson(json);
}
