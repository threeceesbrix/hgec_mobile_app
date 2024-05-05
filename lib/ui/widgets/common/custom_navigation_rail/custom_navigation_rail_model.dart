import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.router.dart';

import 'package:hgec_mobile_app/ui/views/home/home_view.dart';
import 'package:hgec_mobile_app/ui/views/login/login_view.dart';
import 'package:hgec_mobile_app/ui/views/meetings/meetings_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomNavigationRailModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int selectedIndex;

  CustomNavigationRailModel({required this.selectedIndex});
  Future<void> onDestinationSelected(index) async {
    selectedIndex = index;
    notifyListeners();
    if (index == 0) {
      await _navigationService.replaceWithTransition(
        const HomeView(),
      );
    }
    if (index == 1) {
      await _navigationService.replaceWithTransition(
        const MeetingsView(),
      );
    }
    // switch (index) {
    //   case 0:
    //     await _navigationService.replaceWithHomeView();
    //     break;
    //   case 1:
    //     await _navigationService.replaceWithTransition(const MeetingsView(),
    //         transitionStyle: Transition.noTransition);
    //     break;
    //   // default:
    //   //   await _navigationService.replaceWithLoginView();
    // }
  }
}
