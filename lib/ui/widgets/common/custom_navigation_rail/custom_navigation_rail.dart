import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/ui/common/destinations.dart';
import 'package:hgec_mobile_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'custom_navigation_rail_model.dart';

class CustomNavigationRail extends StackedView<CustomNavigationRailModel> {
  final int selectedIndex;
  const CustomNavigationRail({required this.selectedIndex, super.key});

  @override
  Widget builder(
    BuildContext context,
    CustomNavigationRailModel viewModel,
    Widget? child,
  ) {
    return screenWidth(context) < 600
        ? const SizedBox()
        : NavigationRail(
            backgroundColor: Theme.of(context).colorScheme.background,
            indicatorColor: Theme.of(context).colorScheme.primary,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            labelType: NavigationRailLabelType.all,
            onDestinationSelected: viewModel.onDestinationSelected,
            destinations: destinations.map((d) {
              return NavigationRailDestination(
                icon: Icon(d.icon),
                label: Text(d.label),
              );
            }).toList(),
            groupAlignment: -1,
            selectedIndex: viewModel.selectedIndex);
  }

  @override
  CustomNavigationRailModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomNavigationRailModel(selectedIndex: selectedIndex);
}
