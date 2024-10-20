// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i7;
import 'package:flutter/material.dart';
import 'package:hgec_mobile_app/models/meetings/info/meeting_info.dart' as _i8;
import 'package:hgec_mobile_app/ui/views/home/home_view.dart' as _i2;
import 'package:hgec_mobile_app/ui/views/login/login_view.dart' as _i4;
import 'package:hgec_mobile_app/ui/views/meetings/meetings_view.dart' as _i5;
import 'package:hgec_mobile_app/ui/views/meetings_add/meetings_add_view.dart'
    as _i6;
import 'package:hgec_mobile_app/ui/views/startup/startup_view.dart' as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i9;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const loginView = '/login-view';

  static const meetingsView = '/meetings-view';

  static const meetingsAddView = '/meetings-add-view';

  static const all = <String>{
    homeView,
    startupView,
    loginView,
    meetingsView,
    meetingsAddView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.meetingsView,
      page: _i5.MeetingsView,
    ),
    _i1.RouteDef(
      Routes.meetingsAddView,
      page: _i6.MeetingsAddView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      final args = data.getArgs<HomeViewArguments>(
        orElse: () => const HomeViewArguments(),
      );
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i2.HomeView(key: args.key, selectedIndex: args.selectedIndex),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.MeetingsView: (data) {
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.MeetingsView(),
        settings: data,
      );
    },
    _i6.MeetingsAddView: (data) {
      final args = data.getArgs<MeetingsAddViewArguments>(
        orElse: () => const MeetingsAddViewArguments(),
      );
      return _i7.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i6.MeetingsAddView(key: args.key, meetingInfo: args.meetingInfo),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class HomeViewArguments {
  const HomeViewArguments({
    this.key,
    this.selectedIndex,
  });

  final _i7.Key? key;

  final int? selectedIndex;

  @override
  String toString() {
    return '{"key": "$key", "selectedIndex": "$selectedIndex"}';
  }

  @override
  bool operator ==(covariant HomeViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.selectedIndex == selectedIndex;
  }

  @override
  int get hashCode {
    return key.hashCode ^ selectedIndex.hashCode;
  }
}

class MeetingsAddViewArguments {
  const MeetingsAddViewArguments({
    this.key,
    this.meetingInfo,
  });

  final _i7.Key? key;

  final _i8.MeetingInfo? meetingInfo;

  @override
  String toString() {
    return '{"key": "$key", "meetingInfo": "$meetingInfo"}';
  }

  @override
  bool operator ==(covariant MeetingsAddViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.meetingInfo == meetingInfo;
  }

  @override
  int get hashCode {
    return key.hashCode ^ meetingInfo.hashCode;
  }
}

extension NavigatorStateExtension on _i9.NavigationService {
  Future<dynamic> navigateToHomeView({
    _i7.Key? key,
    int? selectedIndex,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.homeView,
        arguments: HomeViewArguments(key: key, selectedIndex: selectedIndex),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMeetingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.meetingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMeetingsAddView({
    _i7.Key? key,
    _i8.MeetingInfo? meetingInfo,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.meetingsAddView,
        arguments: MeetingsAddViewArguments(key: key, meetingInfo: meetingInfo),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView({
    _i7.Key? key,
    int? selectedIndex,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.homeView,
        arguments: HomeViewArguments(key: key, selectedIndex: selectedIndex),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMeetingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.meetingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMeetingsAddView({
    _i7.Key? key,
    _i8.MeetingInfo? meetingInfo,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.meetingsAddView,
        arguments: MeetingsAddViewArguments(key: key, meetingInfo: meetingInfo),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
