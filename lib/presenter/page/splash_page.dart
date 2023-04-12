import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rz_test/injection.dart' as di;
import 'package:rz_test/presenter/page/router/router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () async {
      WidgetsFlutterBinding.ensureInitialized();
      await di.init();
      context.router.navigate(const DashboardRoute());
      context.router.removeLast();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center()
      ),
    );
  }
}
