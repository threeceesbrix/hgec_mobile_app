import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/models/sqlite/userInfo/user_info.dart';
import 'package:hgec_mobile_app/services/home_service.dart';
import 'package:hgec_mobile_app/ui/views/meetings_add/meetings_add_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
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

  Future<void> navigateToAddMeeting() async {
    await _navigationService.navigateWithTransition(const MeetingsAddView(),
        transitionStyle: Transition.fade);
  }
}
