import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:rz_test/data/preferences/prefs.dart';
import 'package:rz_test/presenter/page/router/router.gr.dart';

class CheckIfLoggedIn extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final hasUserData = await Prefs.hasUserData();

    if (hasUserData) {
      resolver.next();
    } else {
      router.navigate(const LoginRoute());
    }
  }

}