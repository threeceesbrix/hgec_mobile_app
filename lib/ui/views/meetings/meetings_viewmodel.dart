import 'package:hgec_mobile_app/ui/common/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:table_calendar/table_calendar.dart';

class MeetingsViewModel extends BaseViewModel {
  Calendar calendarView = Calendar.day;
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  void onDaySelected(DateTime sDay, DateTime fDay) {
    if (!isSameDay(sDay, selectedDay)) {
      selectedDay = sDay;
      focusedDay = fDay;
    }
    rebuildUi();
  }
}
