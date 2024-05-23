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
