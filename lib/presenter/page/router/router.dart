import 'package:auto_route/annotations.dart';
import 'package:rz_test/presenter/page/account_page.dart';
import 'package:rz_test/presenter/page/builder_page.dart';
import 'package:rz_test/presenter/page/dashboard_page.dart';
import 'package:rz_test/presenter/page/home_page.dart';
import 'package:rz_test/presenter/page/login_page.dart';
import 'package:rz_test/presenter/page/registration_page.dart';
import 'package:rz_test/presenter/page/router/check_if_logged_in.dart';
import 'package:rz_test/presenter/page/splash_page.dart';
import 'package:rz_test/presenter/page/unknown_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: DashboardPage, children: [
      AutoRoute(page: HomePage, initial: true),
      AutoRoute(page: BuilderPage),
      AutoRoute(page: UnknownPage),
      AutoRoute(page: AccountPage, guards: [CheckIfLoggedIn]),
    ]),
    AutoRoute(page: LoginPage),
    AutoRoute(page: RegistrationPage),
  ]
)
class $AppRouter {

}