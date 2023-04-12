// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../account_page.dart' as _i8;
import '../builder_page.dart' as _i6;
import '../dashboard_page.dart' as _i2;
import '../home_page.dart' as _i5;
import '../login_page.dart' as _i3;
import '../registration_page.dart' as _i4;
import '../splash_page.dart' as _i1;
import '../unknown_page.dart' as _i7;
import 'check_if_logged_in.dart' as _i11;

class AppRouter extends _i9.RootStackRouter {
  AppRouter({
    _i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
    required this.checkIfLoggedIn,
  }) : super(navigatorKey);

  final _i11.CheckIfLoggedIn checkIfLoggedIn;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.RegistrationPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    BuilderRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.BuilderPage(),
      );
    },
    UnknownRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.UnknownPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.AccountPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          DashboardRoute.name,
          path: '/dashboard-page',
          children: [
            _i9.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: DashboardRoute.name,
            ),
            _i9.RouteConfig(
              BuilderRoute.name,
              path: 'builder-page',
              parent: DashboardRoute.name,
            ),
            _i9.RouteConfig(
              UnknownRoute.name,
              path: 'unknown-page',
              parent: DashboardRoute.name,
            ),
            _i9.RouteConfig(
              AccountRoute.name,
              path: 'account-page',
              parent: DashboardRoute.name,
              guards: [checkIfLoggedIn],
            ),
          ],
        ),
        _i9.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i9.RouteConfig(
          RegistrationRoute.name,
          path: '/registration-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          path: '/dashboard-page',
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.RegistrationPage]
class RegistrationRoute extends _i9.PageRouteInfo<void> {
  const RegistrationRoute()
      : super(
          RegistrationRoute.name,
          path: '/registration-page',
        );

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.BuilderPage]
class BuilderRoute extends _i9.PageRouteInfo<void> {
  const BuilderRoute()
      : super(
          BuilderRoute.name,
          path: 'builder-page',
        );

  static const String name = 'BuilderRoute';
}

/// generated route for
/// [_i7.UnknownPage]
class UnknownRoute extends _i9.PageRouteInfo<void> {
  const UnknownRoute()
      : super(
          UnknownRoute.name,
          path: 'unknown-page',
        );

  static const String name = 'UnknownRoute';
}

/// generated route for
/// [_i8.AccountPage]
class AccountRoute extends _i9.PageRouteInfo<void> {
  const AccountRoute()
      : super(
          AccountRoute.name,
          path: 'account-page',
        );

  static const String name = 'AccountRoute';
}
