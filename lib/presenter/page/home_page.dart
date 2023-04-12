import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rz_test/injection.dart' as di;
import 'package:rz_test/presenter/bloc/user/user_cubit.dart';
import 'package:rz_test/presenter/uikit/not_logged_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserCubit, UserState>(
        builder: (_, state) {
          return SafeArea(
            child: Center(
              child: state.maybeWhen(
                  isLoggedIn: (status) {
                    if (status) {
                      return _loggedInWidget();
                    } else {
                      return const UiKitNotLoggedIn();
                    }
                  },
                  orElse: () => Container()
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _loggedInWidget() {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: const [
        Text('Welcome to Home'),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Icon(Icons.home, size: 72),
        )
      ],
    );
  }
}
