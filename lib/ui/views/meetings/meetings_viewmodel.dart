import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.router.dart';
import 'package:hgec_mobile_app/models/meetings/info/meeting_info.dart';
import 'package:hgec_mobile_app/services/meeting_service.dart';
import 'package:hgec_mobile_app/ui/common/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:table_calendar/table_calendar.dart';

class MeetingsViewModel extends BaseViewModel {
  final meetingService = locator<MeetingService>();
  final navigationService = locator<NavigationService>();

  Calendar calendarView = Calendar.day;
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;
  bool isCalendarVisible = false;
  List<MeetingInfo> meetingList = <MeetingInfo>[];

  MeetingsViewModel() {
    meetingListGet();
  }

  Future<void> meetingListGet() async {
    try {
      setBusy(true);
      final resp = await meetingService.meetingListGet();
      if (resp['statusCode'] == 200) {
        meetingList = List.from(resp['meetingList'])
            .map((e) => MeetingInfo.fromJson(e))
            .toList();
      } else if (resp['statusCode'] == 404) {
        meetingList = <MeetingInfo>[];
      }
      setBusy(false);
    } catch (error) {
      setBusy(false);
      print(error);
    }
  }

  void navigateToInfoView(MeetingInfo meetingInfo) async {
    await navigationService.replaceWithMeetingsAddView(
        meetingInfo: meetingInfo);
  }

  void onDaySelected(DateTime sDay, DateTime fDay) {
    if (!isSameDay(sDay, selectedDay)) {
      selectedDay = sDay;
      focusedDay = fDay;
    }
    rebuildUi();
  }
}
