import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'responsive_widget_model.dart';

class ResponsiveWidget extends StackedView<ResponsiveWidgetModel> {
  final Widget mobileView;
  final Widget tabletView;
  const ResponsiveWidget(
      {required this.mobileView, required this.tabletView, super.key});

  @override
  Widget builder(
    BuildContext context,
    ResponsiveWidgetModel viewModel,
    Widget? child,
  ) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return tabletView;
      } else {
        return mobileView;
      }
    });
  }

  @override
  ResponsiveWidgetModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResponsiveWidgetModel();
}
