import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hgec_mobile_app/app/app.bottomsheets.dart';
import 'package:hgec_mobile_app/app/app.dialogs.dart';
import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/global.dart';
import 'package:hgec_mobile_app/main_app.dart';
import 'package:hgec_mobile_app/services/sqlite_service.dart';

Future<void> main() async {
  Global.baseURL = 'dev';
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  await SqliteService.instance.db;
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  runApp(const MainApp());
}
