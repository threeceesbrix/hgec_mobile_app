import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'menubar_model.dart';

class Menubar extends StackedView<MenubarModel> {
  final String? userName;
  const Menubar({super.key, this.userName});

  @override
  Widget builder(
    BuildContext context,
    MenubarModel viewModel,
    Widget? child,
  ) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 8,
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(userName ?? '',
                    style: Theme.of(context).textTheme.displaySmall)
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: Text(
              'Home',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onTap: viewModel.navigateToHome,
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: Text(
              'Logout',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            onTap: () {
              print('Logout');
            },
          )
        ],
      ),
    );
  }

  @override
  MenubarModel viewModelBuilder(
    BuildContext context,
  ) =>
      MenubarModel();
}
