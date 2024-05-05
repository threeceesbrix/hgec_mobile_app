import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/ui/common/destinations.dart';
import 'package:hgec_mobile_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'custom_bottom_navigation_bar_model.dart';

class CustomBottomNavigationBar
    extends StackedView<CustomBottomNavigationBarModel> {
  final int selectedIndex;

  const CustomBottomNavigationBar({required this.selectedIndex, super.key});

  @override
  Widget builder(
    BuildContext context,
    CustomBottomNavigationBarModel viewModel,
    Widget? child,
  ) {
    return screenWidth(context) < 600
        ? BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            currentIndex: viewModel.selectedIndex,
            onTap: viewModel.onDestinationSelected,
            items: destinations.map((d) {
              return BottomNavigationBarItem(
                  icon: Icon(d.icon), label: d.label);
            }).toList(),
          )
        : const SizedBox.shrink();
  }

  @override
  CustomBottomNavigationBarModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomBottomNavigationBarModel(selectedIndex: selectedIndex);
}
