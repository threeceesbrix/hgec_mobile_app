import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.router.dart';
import 'package:hgec_mobile_app/models/meetings/info/meeting_info.dart';
import 'package:hgec_mobile_app/models/meetings/type/meeting_type.dart';
import 'package:hgec_mobile_app/services/meeting_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MeetingsAddViewModel extends FormViewModel {
  final navigationService = locator<NavigationService>();
  final meetingService = locator<MeetingService>();

  MeetingInfo? meetingInfo;
  MeetingType? selectedType;
  List<MeetingType> meetingTypeList = <MeetingType>[];
  DateTime? selectedDate = DateTime.now();
  TimeOfDay? startTime = TimeOfDay.now();
  TimeOfDay? endTime = TimeOfDay.now();

  MeetingsAddViewModel({this.meetingInfo}) {
    meetingTypeGet();
  }

  Future<void> meetingTypeGet() async {
    try {
      setBusy(true);
      final resp = await meetingService.meetingTypeGet();
      if (resp['statusCode'] == 200) {
        meetingTypeList = List.from(resp['meetingTypeList'])
            .map((e) => MeetingType.fromJson(e))
            .toList();
        meetingTypeList.insert(
            0, MeetingType(meetingTypeId: -1, meetingTypeName: 'None'));

        if (meetingInfo != null) {
          final filteredList = meetingTypeList
              .where((e) => meetingInfo!.meetingTypeId == e.meetingTypeId)
              .toList();
          if (filteredList.isNotEmpty) {
            selectedType = filteredList.first;
          }
        } else if (meetingTypeList.isNotEmpty) {
          selectedType = meetingTypeList.first;
        }
      } else if (resp['statusCode'] == 404) {
        meetingTypeList = <MeetingType>[];
      }
      setBusy(false);
    } catch (error) {
      setBusy(false);
    }
  }

  Future<void> onCancel() async {
    await navigationService.replaceWithHomeView(selectedIndex: 1);
  }
}
