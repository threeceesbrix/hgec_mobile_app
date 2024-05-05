import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.router.dart';
import 'package:hgec_mobile_app/ui/views/home/home_view.dart';
import 'package:hgec_mobile_app/ui/views/login/login_view.dart';
import 'package:hgec_mobile_app/ui/views/meetings/meetings_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomBottomNavigationBarModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int selectedIndex;

  CustomBottomNavigationBarModel({required this.selectedIndex});

  Future<void> onDestinationSelected(index) async {
    print(selectedIndex);
    selectedIndex = index;
    // rebuildUi();
    switch (index) {
      case 0:
        await _navigationService.replaceWithTransition(const HomeView(),
            transitionStyle: Transition.fade);
        break;
      case 1:
        await _navigationService.replaceWithTransition(const MeetingsView(),
            transitionStyle: Transition.rightToLeftWithFade);
        break;
    }
  }
}
