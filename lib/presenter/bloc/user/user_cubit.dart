import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rz_test/domain/usecase/do_login.dart';
import 'package:rz_test/domain/usecase/do_registration.dart';
import 'package:rz_test/domain/usecase/get_user.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  final DoRegistration _doRegistration;
  final DoLogin _doLogin;
  final IsLoggedIn _isLoggedIn;

  UserCubit(this._doRegistration, this._doLogin, this._isLoggedIn) : super(const UserState.initial());

  void getUser() async {
    final result = await _isLoggedIn.execute();

    result.fold(
      (failure) => emit(const _IsLoggedIn(isLoggedIn: false)),
      (data) => emit(_IsLoggedIn(isLoggedIn: data))
    );
  }

  void registration(String email, String password) async {
    emit(const _IsLoading());
    final result = await _doRegistration.execute(email, password);
    result.fold(
      (error) => emit(UserError(message: error.message)),
      (data) => emit(const _Registered())
    );
  }

  void login(String email, String password) async {
    emit(const _IsLoading());
    final result = await _doLogin.execute(email, password);
    result.fold(
          (error) => emit(UserError(message: error.message)),
          (data) => emit(const _Registered())
    );
  }
}
