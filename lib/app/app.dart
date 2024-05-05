import 'package:hgec_mobile_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:hgec_mobile_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:hgec_mobile_app/ui/views/home/home_view.dart';
import 'package:hgec_mobile_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:hgec_mobile_app/ui/views/login/login_view.dart';
import 'package:hgec_mobile_app/ui/views/meetings/meetings_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: MeetingsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
