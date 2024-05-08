import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/app/app.bottomsheets.dart';
import 'package:hgec_mobile_app/app/app.dialogs.dart';
import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.router.dart';
import 'package:hgec_mobile_app/services/sqlite_service.dart';
import 'package:hgec_mobile_app/ui/common/theme.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  await SqliteService.instance.db;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
