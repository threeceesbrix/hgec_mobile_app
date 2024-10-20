import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'custom_text_field_model.dart';

class CustomTextField extends StackedView<CustomTextFieldModel> {
  final double width;
  final String labelText;
  final TextEditingController controller;
  final bool required;
  final Color? labelColor;

  const CustomTextField(
      {required this.labelText,
      required this.controller,
      required this.width,
      required this.required,
      this.labelColor,
      super.key});

  @override
  Widget builder(
    BuildContext context,
    CustomTextFieldModel viewModel,
    Widget? child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: labelColor),
        ),
        Container(
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            textAlign: TextAlign.start,
            controller: controller,
            decoration: InputDecoration(
              hintText: labelText,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  @override
  CustomTextFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomTextFieldModel();
}
