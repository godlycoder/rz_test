part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.isLoggedIn({required bool isLoggedIn}) = _IsLoggedIn;
  const factory UserState.isLoading() = _IsLoading;
  const factory UserState.registered() = _Registered;
  const factory UserState.userError({
    required String message
  }) = UserError;
}
