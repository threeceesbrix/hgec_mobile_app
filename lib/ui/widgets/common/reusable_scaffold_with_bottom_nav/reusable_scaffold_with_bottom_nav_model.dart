import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.router.dart';
import 'package:hgec_mobile_app/ui/views/home/home_view.dart';
import 'package:hgec_mobile_app/ui/views/meetings/meetings_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ReusableScaffoldWithBottomNavModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();
  final int selectedIndex;

  ReusableScaffoldWithBottomNavModel(this.selectedIndex) {
    setIndex(selectedIndex);
  }

  void onDestinationSelected(int index) async {
    setIndex(index);
    switch (index) {
      case 0:
        // await _navigationService.replaceWithTransition(const HomeView(),
        //     transitionStyle: Transition.noTransition);
        await _navigationService.replaceWithHomeView();
        break;
      case 1:
        // await _navigationService.replaceWithTransition(const MeetingsView(),
        //     transitionStyle: Transition.noTransition);
        await _navigationService.replaceWithMeetingsView();

        break;
    }
  }
}
