import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rz_test/presenter/bloc/user/user_cubit.dart';
import 'package:rz_test/presenter/uikit/not_logged_in.dart';

class BuilderPage extends StatelessWidget {
  const BuilderPage({Key? key}) : super(key: key);

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
        Text('Welcome to Builder'),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Icon(Icons.directions_bus_filled, size: 72),
        )
      ],
    );
  }
}
