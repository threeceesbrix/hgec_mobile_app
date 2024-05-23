import 'package:hgec_mobile_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:hgec_mobile_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:hgec_mobile_app/ui/views/home/home_view.dart';
import 'package:hgec_mobile_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:hgec_mobile_app/ui/views/login/login_view.dart';
import 'package:hgec_mobile_app/ui/views/meetings/meetings_view.dart';
import 'package:hgec_mobile_app/services/http_service_service.dart';
import 'package:hgec_mobile_app/services/login_service.dart';
import 'package:hgec_mobile_app/services/sqlite_service.dart';
import 'package:hgec_mobile_app/services/home_service.dart';
import 'package:hgec_mobile_app/ui/views/meetings_add/meetings_add_view.dart';
import 'package:hgec_mobile_app/services/meeting_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: MeetingsView),
    MaterialRoute(page: MeetingsAddView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: HttpService),
    LazySingleton(classType: LoginService),
    LazySingleton(classType: SqliteService),
    LazySingleton(classType: HomeService),
    LazySingleton(classType: MeetingService),
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
  logger: StackedLogger(),
)
class App {}
