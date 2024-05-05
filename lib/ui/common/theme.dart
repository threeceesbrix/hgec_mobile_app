import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/ui/common/app_colors.dart';

ThemeData theme = ThemeData(
  primaryColor: kcPrimaryColor,
  primaryColorDark: kcPrimaryColorDark,
  primaryColorLight: kcPrimaryColorLight,
  colorScheme: const ColorScheme.light(
    background: kcBackgroundColor,
    primary: kcPrimaryColor,
    secondary: kcSecondaryColor,
    error: kcErrorColor,
  ),
);
