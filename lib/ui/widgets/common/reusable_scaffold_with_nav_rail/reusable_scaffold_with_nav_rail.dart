import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'reusable_scaffold_with_nav_rail_model.dart';

class ReusableScaffoldWithNavRail
    extends StackedView<ReusableScaffoldWithNavRailModel> {
  const ReusableScaffoldWithNavRail({super.key});

  @override
  Widget builder(
    BuildContext context,
    ReusableScaffoldWithNavRailModel viewModel,
    Widget? child,
  ) {
    return const SizedBox.shrink();
  }

  @override
  ReusableScaffoldWithNavRailModel viewModelBuilder(
    BuildContext context,
  ) =>
      ReusableScaffoldWithNavRailModel();
}
