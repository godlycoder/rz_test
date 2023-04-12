import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rz_test/presenter/bloc/user/user_cubit.dart';
import 'package:rz_test/injection.dart' as di;

import '../uikit/text_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _bloc = di.locator<UserCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: Scaffold(
        body: BlocConsumer<UserCubit, UserState>(
          listener: (_, state) {
            if (state is UserError) {
              Fluttertoast.showToast(msg: state.message);
            }
          },
          builder: (_, state) {
            return SafeArea(
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
                          controller: _passwordController,
                          hintText: 'Password',
                          obscureText: true,
                        ),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              _submit();
                            },
                            child: state.maybeWhen(
                                isLoading: () => const CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                                orElse: () => const Text('Registration')
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _submit() {
    final email  = _emailController.text;
    final password = _passwordController.text;

    _bloc.registration(email, password);
  }
}
