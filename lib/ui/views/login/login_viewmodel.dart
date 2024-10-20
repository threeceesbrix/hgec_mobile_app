import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.router.dart';
import 'package:hgec_mobile_app/services/login_service.dart';
import 'package:hgec_mobile_app/ui/views/login/login_view.form.dart';
// import 'package:hgec_mobile_app/ui/views/login/login_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _loginService = locator<LoginService>();
  final _dialogService = locator<DialogService>();

  @override
  void setFormStatus() {
    log.i('Set form Status with data: $formValueMap');

    // Set a validation message for the entire form
    if (hasPasswordValidationMessage || hasUserNameValidationMessage) {
      setValidationMessage('Error in the form,adsf please check again');
    }
  }

  // Future<void> navigateToHomeView() async {
  //   await _navigationService.navigateToHomeView();
  // }

  Future<void> login({String? userName, String? password}) async {
    validateForm();
    if (isFormValid) {
      setBusy(true);
      var resp = await _loginService.login(
          userName: userName ?? '', password: password ?? '');
      setBusy(false);
      if (resp['statusCode'] != 200) {
        await _dialogService.showDialog(
            title: 'Error', description: resp['message']);
      } else {
        await _navigationService.navigateToHomeView();
      }
    }
  }
}
