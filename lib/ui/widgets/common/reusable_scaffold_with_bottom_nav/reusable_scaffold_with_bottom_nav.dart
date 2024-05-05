import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/ui/common/destinations.dart';
import 'package:hgec_mobile_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'reusable_scaffold_with_bottom_nav_model.dart';

class ReusableScaffoldWithBottomNav
    extends StackedView<ReusableScaffoldWithBottomNavModel> {
  final String appBarTitle;
  final Widget widget;
  final int selectedIndex;
  const ReusableScaffoldWithBottomNav(
      {required this.appBarTitle,
      required this.selectedIndex,
      required this.widget,
      super.key});

  @override
  Widget builder(
    BuildContext context,
    ReusableScaffoldWithBottomNavModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          appBarTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: PopScope(
        canPop: false,
        child: SafeArea(
          child: screenWidth(context) < 600
              ? widget
              : Row(
                  children: [
                    NavigationRail(
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                        indicatorColor: Theme.of(context).colorScheme.primary,
                        selectedIconTheme: IconThemeData(color: Colors.white),
                        destinations: destinations.map((e) {
                          return NavigationRailDestination(
                            icon: Icon(e.icon),
                            label: Text(e.label),
                          );
                        }).toList(),
                        onDestinationSelected: viewModel.onDestinationSelected,
                        groupAlignment: -1,
                        selectedIndex: viewModel.currentIndex),
                    Expanded(child: widget)
                  ],
                ),
        ),
      ),
    );
  }

  @override
  ReusableScaffoldWithBottomNavModel viewModelBuilder(
    BuildContext context,
  ) =>
      ReusableScaffoldWithBottomNavModel(selectedIndex);
}
