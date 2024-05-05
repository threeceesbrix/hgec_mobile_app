import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'password_text_field_model.dart';

class PasswordTextField extends StackedView<PasswordTextFieldModel> {
  final double width;
  final String labelText;
  final TextEditingController controller;
  const PasswordTextField(
      {required this.width,
      required this.labelText,
      required this.controller,
      super.key});

  @override
  Widget builder(
    BuildContext context,
    PasswordTextFieldModel viewModel,
    Widget? child,
  ) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: viewModel.obscureText,
        decoration: InputDecoration(
          hintText: labelText,
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(
              viewModel.obscureText ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: viewModel.switchObscure,
          ),
        ),
      ),
    );
  }

  @override
  PasswordTextFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      PasswordTextFieldModel();
}
