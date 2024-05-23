import 'package:hgec_mobile_app/models/meetings/info/meeting_info.dart';
import 'package:stacked/stacked.dart';

class MeetingsAddViewModel extends FormViewModel {
  MeetingInfo? meetingInfo;
  DateTime selectedDate = DateTime.now();

  MeetingsAddViewModel({this.meetingInfo});
}
