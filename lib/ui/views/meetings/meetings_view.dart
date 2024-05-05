import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/ui/common/ui_helpers.dart';
import 'package:hgec_mobile_app/ui/widgets/common/custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:hgec_mobile_app/ui/widgets/common/custom_navigation_rail/custom_navigation_rail.dart';
import 'package:hgec_mobile_app/ui/widgets/common/reusable_scaffold_with_bottom_nav/reusable_scaffold_with_bottom_nav.dart';
import 'package:stacked/stacked.dart';

import 'meetings_viewmodel.dart';

class MeetingsView extends StackedView<MeetingsViewModel> {
  const MeetingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MeetingsViewModel viewModel,
    Widget? child,
  ) {
    return const ReusableScaffoldWithBottomNav(
        appBarTitle: 'Meetings', selectedIndex: 1, widget: Test());
    // return Scaffold(
    //   appBar: AppBar(
    //     automaticallyImplyLeading: false,
    //     title: Text(
    //       "Meetings",
    //       style: Theme.of(context).textTheme.titleLarge,
    //     ),
    //   ),
    //   backgroundColor: Theme.of(context).colorScheme.background,
    //   body: PopScope(
    //     canPop: false,
    //     child: SafeArea(
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           const CustomNavigationRail(
    //             selectedIndex: 1,
    //           ),
    //           Flexible(
    //             flex: 2,
    //             child: Container(
    //               padding: const EdgeInsets.only(top: 10),
    //               child: SingleChildScrollView(
    //                   scrollDirection: Axis.horizontal,
    //                   child: Row(
    //                     children: [
    //                       ...List.generate(
    //                         100,
    //                         (index) {
    //                           return Padding(
    //                             padding: const EdgeInsets.all(8.0),
    //                             child: Text("$index"),
    //                           );
    //                         },
    //                       ),
    //                     ],
    //                   )),
    //             ),
    //           ),
    //           Flexible(
    //             flex: 2,
    //             child: Container(
    //               decoration: const BoxDecoration(color: Colors.red),
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
  MeetingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MeetingsViewModel();
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      100,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("$index"),
                        );
                      },
                    ),
                  ],
                )),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            decoration: const BoxDecoration(color: Colors.red),
          ),
        ),
      ],
    );
  }
}
