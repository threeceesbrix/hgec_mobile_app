import 'package:hgec_mobile_app/app/app.locator.dart';
import 'package:hgec_mobile_app/app/app.logger.dart';
import 'package:hgec_mobile_app/models/sqlite/user_info.dart';
import 'package:hgec_mobile_app/services/sqlite_service.dart';

final log = getLogger('HomeService');

class HomeService {
  Future<SqlUserInfo?> getUserInfo() async {
    final databaseService = locator<SqliteService>();

    final SqlUserInfo? userInfo = await databaseService.getUserInfo(1);

    log.v(userInfo.toString());

    return userInfo;
  }
}
