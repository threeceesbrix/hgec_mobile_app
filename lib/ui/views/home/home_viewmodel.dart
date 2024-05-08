import 'package:hgec_mobile_app/app/app.bottomsheets.dart';
import 'package:hgec_mobile_app/app/app.dialogs.dart';
import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/models/sqlite/user_info.dart';
import 'package:hgec_mobile_app/services/home_service.dart';
import 'package:hgec_mobile_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _dialogService = locator<DialogService>();
  final _homeSerivce = locator<HomeService>();
  SqlUserInfo? userInfo;

  HomeViewModel() {
    getData();
  }

  Future<void> getData() async {
    setBusy(true);
    await Future.delayed(const Duration(seconds: 3));
    userInfo = await _homeSerivce.getUserInfo();
    setBusy(false);
  }

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
