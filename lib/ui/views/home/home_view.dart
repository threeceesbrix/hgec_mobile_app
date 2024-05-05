import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/ui/common/ui_helpers.dart';
import 'package:hgec_mobile_app/ui/widgets/common/custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:hgec_mobile_app/ui/widgets/common/custom_navigation_rail/custom_navigation_rail.dart';
import 'package:hgec_mobile_app/ui/widgets/common/reusable_scaffold_with_bottom_nav/reusable_scaffold_with_bottom_nav.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return const ReusableScaffoldWithBottomNav(
        appBarTitle: 'Home', selectedIndex: 0, widget: Test());
    // Scaffold(
    //   appBar: AppBar(
    //     automaticallyImplyLeading: false,
    //     title: Text(
    //       'Home',
    //       style: Theme.of(context).textTheme.titleLarge,
    //     ),
    //   ),
    //   body: PopScope(
    //     canPop: false,
    //     child: SafeArea(
    //       child: Row(
    //         children: [
    //           const CustomNavigationRail(
    //             selectedIndex: 0,
    //           ),
    //           Flexible(
    //             flex: 2,
    //             child: Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 8),
    //               child: ListView(
    //                 children: const [
    //                   verticalSpaceSmall,
    //                   SearchBar(),
    //                   verticalSpaceSmall,
    //                 ],
    //               ),
    //             ),
    //           ),
    //           Flexible(
    //             flex: 2,
    //             child: Container(
    //               decoration:
    //                   BoxDecoration(color: Theme.of(context).colorScheme.error),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //   bottomNavigationBar: screenWidth(context) > 600
    //       ? const SizedBox()
    //       : CustomBottomNavigationBar(
    //           selectedIndex: viewModel.selectedNavIndex),
    // );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListView(
              children: const [
                verticalSpaceSmall,
                SearchBar(),
                verticalSpaceSmall,
              ],
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.error),
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Colors.white),
        padding: const EdgeInsets.fromLTRB(31, 12, 12, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.search),
            const SizedBox(
              width: 23.5,
            ),
            Expanded(
              child: TextField(
                maxLines: 1,
                decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText: "Search replies",
                    hintStyle: Theme.of(context).textTheme.bodyMedium),
              ),
            ),
            const CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
