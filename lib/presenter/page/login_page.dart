import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rz_test/presenter/bloc/user/user_cubit.dart';
import 'package:rz_test/presenter/page/router/router.gr.dart';
import 'package:rz_test/presenter/uikit/text_field.dart';
import 'package:rz_test/injection.dart' as di;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _bloc = di.locator<UserCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Wrap(
                children: [
                  UiKitTextField(
                    hintText: 'Email',
                    controller: _emailController,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: UiKitTextField(
                      hintText: 'Password',
                      obscureText: true,
                      controller: _passwordController,
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {

                        },
                        child: const Text('Login')
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        children: [
                          const Spacer(),
                          const Text('Haven\'t account?'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: GestureDetector(
                              onTap: () {
                                context.router.navigate(const RegistrationRoute());
                              },
                              child: const Text('Registration Now', style: TextStyle(color: Colors.blue),),
                            ),
                          ),
                          const Spacer(),
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _submit() {
    final email  = _emailController.text;
    final password = _passwordController.text;

    _bloc.login(email, password);
  }
}
