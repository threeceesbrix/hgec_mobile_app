import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'custom_text_field_model.dart';

class CustomTextField extends StackedView<CustomTextFieldModel> {
  final double width;
  final String labelText;
  final TextEditingController controller;
  const CustomTextField(
      {required this.labelText,
      required this.controller,
      required this.width,
      super.key});

  @override
  Widget builder(
    BuildContext context,
    CustomTextFieldModel viewModel,
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
        decoration:
            InputDecoration(hintText: labelText, border: InputBorder.none),
      ),
    );
  }

  @override
  CustomTextFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomTextFieldModel();
}
