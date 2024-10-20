import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/ui/common/calendar_utils.dart';
import 'package:hgec_mobile_app/ui/common/enums.dart';
import 'package:hgec_mobile_app/ui/common/time_utils.dart';
import 'package:hgec_mobile_app/ui/common/ui_helpers.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:table_calendar/table_calendar.dart';

import 'meetings_viewmodel.dart';

class MeetingsView extends StackedView<MeetingsViewModel> {
  const MeetingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MeetingsViewModel viewModel,
    Widget? child,
  ) {
    return viewModel.isBusy
        ? const Center(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: viewModel.isCalendarVisible,
                child: Flexible(
                  flex: 2,
                  child: TableCalendar(
                    availableCalendarFormats: const {
                      CalendarFormat.month: 'Month'
                    },
                    calendarBuilders: CalendarBuilders(
                      dowBuilder: (context, day) {
                        if (day.weekday == DateTime.saturday ||
                            day.weekday == DateTime.sunday) {
                          final text = DateFormat.E().format(day);
                          return Center(
                            child: Text(
                              text,
                              style: const TextStyle(color: Colors.red),
                            ),
                          );
                        }
                        return null;
                      },
                      holidayBuilder: (context, day, focusedDay) {
                        if (day.weekday == DateTime.saturday ||
                            day.weekday == DateTime.sunday) {
                          final text = day.day;
                          return Center(
                            child: Text(
                              text.toString(),
                              style: const TextStyle(color: Colors.red),
                            ),
                          );
                        }
                        return null;
                      },
                    ),
                    calendarFormat: viewModel.calendarFormat,
                    focusedDay: viewModel.focusedDay,
                    firstDay: kFirstDay,
                    holidayPredicate: (day) {
                      if (day.weekday == 6 || day.weekday == 7) {
                        return true;
                      } else {
                        return false;
                      }
                    },
                    lastDay: kLastDay,
                    onDaySelected: viewModel.onDaySelected,
                    onPageChanged: (focusedDay) {
                      viewModel.focusedDay = focusedDay;
                    },
                    selectedDayPredicate: (day) {
                      return isSameDay(viewModel.selectedDay, day);
                    },
                    weekendDays: const [DateTime.saturday, DateTime.sunday],
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Meetings',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      verticalSpaceMedium,
                      Row(
                        children: [
                          SegmentedButton<Calendar>(
                            style: ButtonStyle(
                              iconColor: WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.selected)) {
                                    return Theme.of(context)
                                        .colorScheme
                                        .surface;
                                  } else {
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary;
                                  }
                                },
                              ),
                              foregroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.selected)) {
                                    return Theme.of(context)
                                        .colorScheme
                                        .surface;
                                  } else {
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary;
                                  }
                                },
                              ),
                              backgroundColor:
                                  WidgetStateProperty.resolveWith<Color>(
                                (Set<WidgetState> states) {
                                  if (states.contains(WidgetState.selected)) {
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary;
                                  } else {
                                    return Theme.of(context)
                                        .colorScheme
                                        .surface;
                                  }
                                },
                              ),
                            ),
                            segments: const <ButtonSegment<Calendar>>[
                              ButtonSegment<Calendar>(
                                value: Calendar.day,
                                label: Text('Today'),
                                icon: Icon(Icons.calendar_view_day),
                              ),
                              ButtonSegment<Calendar>(
                                value: Calendar.week,
                                label: Text('Week'),
                                icon: Icon(Icons.calendar_view_week),
                              ),
                              ButtonSegment<Calendar>(
                                value: Calendar.month,
                                label: Text('Month'),
                                icon: Icon(Icons.calendar_view_month),
                              ),
                            ],
                            selected: <Calendar>{viewModel.calendarView},
                            onSelectionChanged: (Set<Calendar> newSelection) {
                              viewModel.calendarView = newSelection.first;
                              viewModel.notifyListeners();
                            },
                          ),
                          horizontalSpaceMedium,
                          IconButton(
                            onPressed: () {
                              viewModel.isCalendarVisible =
                                  !viewModel.isCalendarVisible;
                              viewModel.notifyListeners();
                            },
                            icon: const Icon(Icons.calendar_month),
                            iconSize: 30,
                          ),
                        ],
                      ),
                      verticalSpaceMedium,
                      Text(
                        DateFormat('EEEE').format(viewModel.focusedDay),
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      // verticalSpaceSmall,
                      Text(
                        DateFormat('d  MMM').format(viewModel.focusedDay),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      verticalSpaceSmall,
                      Flexible(
                        child: ListView.separated(
                            itemBuilder: (BuildContext context, int index) {
                              return MeetingInfoContainer(
                                meetingTitle:
                                    viewModel.meetingList[index].meetingTitle,
                                meetingEndTime:
                                    viewModel.meetingList[index].meetingEndTime,
                                meetingStartTime: viewModel
                                    .meetingList[index].meetingStartTime,
                                onTap: () => viewModel.navigateToInfoView(
                                    viewModel.meetingList[index]),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    verticalSpaceMedium,
                            itemCount: viewModel.meetingList.length),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }

  @override
  MeetingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MeetingsViewModel();
}

class MeetingInfoContainer extends StatelessWidget {
  final TimeOfDay? meetingStartTime;
  final TimeOfDay? meetingEndTime;
  final String meetingTitle;
  final Function()? onTap;
  const MeetingInfoContainer({
    required this.meetingTitle,
    this.meetingEndTime,
    this.meetingStartTime,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          formatTime(meetingStartTime),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          formatTime(meetingEndTime),
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    horizontalSpaceMedium,
                    VerticalDivider(
                      color: Theme.of(context).colorScheme.primary,
                      thickness: 2,
                      width: 2,
                    ),
                    horizontalSpaceMedium,
                    Text(
                      meetingTitle,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
          ),
        );
      },
    );
  }
}
