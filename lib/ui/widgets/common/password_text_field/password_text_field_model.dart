import 'package:stacked/stacked.dart';

class PasswordTextFieldModel extends BaseViewModel {
  bool obscureText = true;

  void switchObscure() {
    obscureText = !obscureText;
    rebuildUi();
  }
}
