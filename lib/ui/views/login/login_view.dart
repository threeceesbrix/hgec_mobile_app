import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/global.dart';
import 'package:hgec_mobile_app/ui/common/ui_helpers.dart';
import 'package:hgec_mobile_app/ui/common/validators.dart';
import 'package:hgec_mobile_app/ui/views/login/login_view.form.dart';
import 'package:hgec_mobile_app/ui/widgets/common/custom_text_field/custom_text_field.dart';
import 'package:hgec_mobile_app/ui/widgets/common/password_text_field/password_text_field.dart';
import 'package:hgec_mobile_app/ui/widgets/common/responsive_widget/responsive_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(
    name: "userName",
    validator: FormValidators.userNameValidator,
  ),
  FormTextField(
    name: "password",
    validator: FormValidators.passwordValidator,
  )
])
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ResponsiveWidget(
          mobileView: const SizedBox(),
          tabletView: TabletView(
              viewModel: viewModel,
              userNameController: userNameController,
              passwordController: passwordController)),
    );
  }

  // @override
  // void onViewModelReady(LoginViewModel viewModel) {
  //   syncFormWithViewModel(viewModel);
  // }

  @override
  void onDispose(LoginViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}

class TabletView extends StatelessWidget {
  const TabletView({
    super.key,
    required this.viewModel,
    required this.userNameController,
    required this.passwordController,
  });

  final LoginViewModel viewModel;
  final TextEditingController userNameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Center(
          child: Container(
            height: orientation == Orientation.landscape
                ? screenHeightFraction(context) * 0.8
                : screenHeightFraction(context) * 0.5,
            width: orientation == Orientation.landscape
                ? screenWidthFraction(dividedBy: 2, context)
                : screenWidthFraction(context) * 0.7,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/login_bg.png'), fit: BoxFit.cover),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: orientation == Orientation.landscape
                          ? screenHeightFraction(dividedBy: 5, context)
                          : screenHeightFraction(dividedBy: 10, context),
                      width: screenWidthFraction(dividedBy: 4, context),
                      child: Image.asset('assets/hge_white.png'),
                    ),
                    CustomTextField(
                      labelText: Global.baseURL,
                      controller: userNameController,
                      width: screenWidthFraction(dividedBy: 3, context),
                      required: true,
                    ),
                    Visibility(
                      visible: viewModel.hasUserNameValidationMessage,
                      child: Text(
                        viewModel.userNameValidationMessage ?? '',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                    verticalSpaceSmall,
                    PasswordTextField(
                      width: screenWidthFraction(dividedBy: 3, context),
                      labelText: "Password",
                      controller: passwordController,
                      visible: viewModel.hasPasswordValidationMessage,
                      validationMessage: viewModel.passwordValidationMessage,
                    ),
                    Visibility(
                      visible: viewModel.hasPasswordValidationMessage,
                      child: Text(
                        viewModel.passwordValidationMessage ?? '',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                    verticalSpaceSmall,
                    SizedBox(
                      height: 50,
                      width: screenWidthFraction(dividedBy: 3, context),
                      child: ElevatedButton(
                        clipBehavior: Clip.hardEdge,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          viewModel.login(
                              userName: userNameController.text,
                              password: passwordController.text);
                        },
                        child: viewModel.isBusy
                            ? const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Loading...',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  horizontalSpaceSmall,
                                  CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ],
                              )
                            : const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17),
                              ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
