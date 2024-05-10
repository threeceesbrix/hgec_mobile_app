import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MenubarModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future<void> navigateToHome() async {
    await _navigationService.replaceWithHomeView();
  }
}
