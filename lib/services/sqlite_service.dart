import 'dart:io';

import 'package:flutter/services.dart';
import 'package:hgec_mobile_app/models/sqlite/user_info.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'package:hgec_mobile_app/app/app.logger.dart';

final log = getLogger('SqliteService');

const String dbName = 'hgec_db.sqlite';

const String userInfoTable = 'userinfo';

class SqliteService {
  static const String dbName = 'hgec_db.sqlite';
  static const int dbVersion = 1;

  SqliteService(); //Private constructor to prevent instantiation

  static final SqliteService instance = SqliteService();

  static Database? database;

  Future<Database> get db async {
    if (database != null) return database!;

    database = await initDatabase();
    return database!;
  }

  Future<Database> initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = p.join(documentsDirectory.path, dbName);
    try {
      return await openDatabase(
        path,
        version: dbVersion,
        onCreate: createDatabase,
        onUpgrade: upgradeDatabase,
      );
    } on DatabaseException catch (error) {
      log.e('initDatabase : $error');
      rethrow;
    }
  }

  Future<void> createDatabase(Database db, int version) async {
    try {
      String sql = await loadSqlFile('1_create_schema.sql');
      await db.execute(sql);
    } catch (error) {
      log.e('createDatabase : $error');
    }
  }

  Future<void> upgradeDatabase(
      Database db, int oldVersion, int newVersion) async {}

  Future<String> loadSqlFile(String fileName) async {
    return await rootBundle.loadString("assets/$fileName");
  }

  Future<bool> deleteUserInfo(int id) async {
    bool deleted = false;
    try {
      await database!
          .delete(userInfoTable, where: '$colId = ?', whereArgs: [id]);
      deleted = true;
    } catch (error) {
      log.e('insertUserInfo : $error');
      deleted = false;
    }
    return deleted;
  }

  Future<SqlUserInfo?> getUserInfo(int id) async {
    SqlUserInfo? userInfo;
    try {
      List<Map> maps = await database!.query(userInfoTable,
          columns: [
            colId,
            colUserId,
            colUserName,
            colAccessToken,
            colRefreshToken,
            colDeviceToken
          ],
          where: '$colId = ?',
          whereArgs: [id]);
      if (maps.isNotEmpty) {
        userInfo = SqlUserInfo.fromMap(maps.first);
      }
    } catch (error) {
      log.e('getUserInfo : $error');
    }
    return userInfo;
  }

  Future<bool> insertUserInfo(SqlUserInfo userInfo) async {
    bool inserted = false;
    try {
      await database!.insert(userInfoTable, userInfo.toMap());
      inserted = true;
    } catch (error) {
      log.e('insertUserInfo : $error');
      inserted = false;
    }
    return inserted;
  }
}
