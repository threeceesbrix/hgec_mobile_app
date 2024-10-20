import 'package:flutter/material.dart';

TimeOfDay? timeFromJson(String time) {
  final timeParts = time.split(':');
  final hour = int.parse(timeParts[0]);
  final minute = int.parse(timeParts[1]);
  return TimeOfDay(hour: hour, minute: minute);
}

String timeToJson(TimeOfDay? time) {
  return '${time!.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}:00';
}

extension TimeOfDayExtension on TimeOfDay {
  TimeOfDay addMinutes(int minutes) {
    if (minutes == 0) {
      return this;
    }

    final totalMinutes = hour * 60 + minute;

    final newTotalMinutes = (totalMinutes + minutes + 1440) % 1440;

    final newHour = newTotalMinutes ~/ 60;
    final newMinute = newTotalMinutes % 60;

    return TimeOfDay(hour: newHour, minute: newMinute);
  }
}

String formatTime(TimeOfDay? timeOfDay) {
  return '${timeOfDay!.hourOfPeriod}:${timeOfDay.minute.toString().padLeft(2, '0')} ${timeOfDay.period == DayPeriod.am ? 'AM' : 'PM'}';
}
