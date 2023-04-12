import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rz_test/presenter/page/router/check_if_logged_in.dart';
import 'package:rz_test/presenter/page/router/router.gr.dart';

void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter(checkIfLoggedIn: CheckIfLoggedIn());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        routerDelegate: AutoRouterDelegate(
          _appRouter,
          navigatorObservers: () => [AutoRouteObserver()]
        ),
        routeInformationParser: _appRouter.defaultRouteParser()
    );
  }
}
