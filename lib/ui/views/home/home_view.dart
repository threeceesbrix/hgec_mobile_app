import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/ui/views/meetings/meetings_view.dart';
import 'package:hgec_mobile_app/ui/widgets/common/menubar/menubar.dart';
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
    const List<Tab> tabs = <Tab>[
      Tab(
        icon: Icon(Icons.dashboard),
        text: 'Dashboard',
      ),
      Tab(
        icon: Icon(Icons.calendar_month_outlined),
        text: 'Meetings',
      ),
      Tab(
        icon: Icon(Icons.add_location_outlined),
        text: 'Site Visit',
      ),
    ];

    return DefaultTabController(
      key: key,
      length: 3,
      child: Builder(
        builder: (context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(
            () async {
              if (!tabController.indexIsChanging) {
                viewModel.notifyListeners();
              }
            },
          );
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              bottom: const TabBar(tabs: tabs),
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
            ),
            drawer: viewModel.isBusy
                ? null
                : Menubar(
                    userName: viewModel.userInfo!.username,
                  ),
            body: PopScope(
              canPop: false,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: viewModel.isBusy
                        ? const [
                            Center(
                              child: CircularProgressIndicator(),
                            ),
                            Center(
                              child: CircularProgressIndicator(),
                            ),
                            Center(
                              child: CircularProgressIndicator(),
                            ),
                          ]
                        : [
                            Tab(
                              text: viewModel.userInfo!.username,
                            ),
                            const MeetingsView(),
                            const Tab(
                              text: 'Coming Soon',
                            )
                          ],
                  ),
                ),
              ),
            ),
            floatingActionButton: tabController.index != 1
                ? const SizedBox.shrink()
                : FloatingActionButton(
                    onPressed: viewModel.navigateToAddMeeting,
                    child: const Icon(Icons.add),
                  ),
          );
        },
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
