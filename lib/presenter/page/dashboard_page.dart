import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rz_test/presenter/bloc/user/user_cubit.dart';
import 'package:rz_test/presenter/page/router/router.gr.dart';
import 'package:rz_test/injection.dart' as di;

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with AutoRouteAwareStateMixin<DashboardPage> {

  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.locator<UserCubit>()..getUser(),
        )
      ],
      child: Scaffold(
        body: const AutoRouter(),
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.green,
            ),
            child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: 'Home'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.directions_bus_filled),
                    label: 'Builder'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.access_time_filled_sharp),
                    label: 'Unknown'
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Account'
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });

                _navigatePage();
              },
            )
        ),
      )
    );
  }

  _navigatePage() {
    switch(_selectedIndex) {
      case 0 :
        context.router.navigate(const HomeRoute());
        break;
      case 1 :
        context.router.navigate(const BuilderRoute());
        break;
      case 2:
        context.router.navigate(const UnknownRoute());
        break;
      default :
        context.router.navigate(const AccountRoute());
    }
  }

  @override
  void didPushNext() {
    if (context.router.current.name == LoginRoute.name) {
      _selectedIndex -= 1;
    }
    super.didPush();
  }
}
