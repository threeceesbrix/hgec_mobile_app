import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;

  const ResponsiveWidget(
      {required this.mobileView, required this.tabletView, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileView;
      } else {
        return tabletView;
      }
    });
  }
}
