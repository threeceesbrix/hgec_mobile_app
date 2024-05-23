import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_agenda.freezed.dart';
part 'meeting_agenda.g.dart';

@freezed
class MeetingAgenda with _$MeetingAgenda {
  const factory MeetingAgenda({
    @JsonKey(name: 'meeting_agenda_id') required int meetingAgendaId,
    @JsonKey(name: 'meeting_id') required int meetingId,
    @JsonKey(name: 'meeting_agenda') required String meetingAgenda,
    @JsonKey(name: 'created_date') required DateTime createdDate,
    @JsonKey(name: 'created_user_id') required int createdUserId,
  }) = _MeetingAgenda;

  factory MeetingAgenda.fromJson(Map<String, dynamic> json) =>
      _$MeetingAgendaFromJson(json);
}
