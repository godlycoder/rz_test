// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoggedIn) isLoggedIn,
    required TResult Function() isLoading,
    required TResult Function() registered,
    required TResult Function(String message) userError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoggedIn)? isLoggedIn,
    TResult? Function()? isLoading,
    TResult? Function()? registered,
    TResult? Function(String message)? userError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoggedIn)? isLoggedIn,
    TResult Function()? isLoading,
    TResult Function()? registered,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Registered value) registered,
    required TResult Function(UserError value) userError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsLoggedIn value)? isLoggedIn,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(UserError value)? userError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Registered value)? registered,
    TResult Function(UserError value)? userError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoggedIn) isLoggedIn,
    required TResult Function() isLoading,
    required TResult Function() registered,
    required TResult Function(String message) userError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoggedIn)? isLoggedIn,
    TResult? Function()? isLoading,
    TResult? Function()? registered,
    TResult? Function(String message)? userError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoggedIn)? isLoggedIn,
    TResult Function()? isLoading,
    TResult Function()? registered,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Registered value) registered,
    required TResult Function(UserError value) userError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsLoggedIn value)? isLoggedIn,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(UserError value)? userError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Registered value)? registered,
    TResult Function(UserError value)? userError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_IsLoggedInCopyWith<$Res> {
  factory _$$_IsLoggedInCopyWith(
          _$_IsLoggedIn value, $Res Function(_$_IsLoggedIn) then) =
      __$$_IsLoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoggedIn});
}

/// @nodoc
class __$$_IsLoggedInCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_IsLoggedIn>
    implements _$$_IsLoggedInCopyWith<$Res> {
  __$$_IsLoggedInCopyWithImpl(
      _$_IsLoggedIn _value, $Res Function(_$_IsLoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
  }) {
    return _then(_$_IsLoggedIn(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsLoggedIn implements _IsLoggedIn {
  const _$_IsLoggedIn({required this.isLoggedIn});

  @override
  final bool isLoggedIn;

  @override
  String toString() {
    return 'UserState.isLoggedIn(isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsLoggedIn &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsLoggedInCopyWith<_$_IsLoggedIn> get copyWith =>
      __$$_IsLoggedInCopyWithImpl<_$_IsLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoggedIn) isLoggedIn,
    required TResult Function() isLoading,
    required TResult Function() registered,
    required TResult Function(String message) userError,
  }) {
    return isLoggedIn(this.isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoggedIn)? isLoggedIn,
    TResult? Function()? isLoading,
    TResult? Function()? registered,
    TResult? Function(String message)? userError,
  }) {
    return isLoggedIn?.call(this.isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoggedIn)? isLoggedIn,
    TResult Function()? isLoading,
    TResult Function()? registered,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn(this.isLoggedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Registered value) registered,
    required TResult Function(UserError value) userError,
  }) {
    return isLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsLoggedIn value)? isLoggedIn,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(UserError value)? userError,
  }) {
    return isLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Registered value)? registered,
    TResult Function(UserError value)? userError,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _IsLoggedIn implements UserState {
  const factory _IsLoggedIn({required final bool isLoggedIn}) = _$_IsLoggedIn;

  bool get isLoggedIn;
  @JsonKey(ignore: true)
  _$$_IsLoggedInCopyWith<_$_IsLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsLoadingCopyWith<$Res> {
  factory _$$_IsLoadingCopyWith(
          _$_IsLoading value, $Res Function(_$_IsLoading) then) =
      __$$_IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsLoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_IsLoading>
    implements _$$_IsLoadingCopyWith<$Res> {
  __$$_IsLoadingCopyWithImpl(
      _$_IsLoading _value, $Res Function(_$_IsLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'UserState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoggedIn) isLoggedIn,
    required TResult Function() isLoading,
    required TResult Function() registered,
    required TResult Function(String message) userError,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoggedIn)? isLoggedIn,
    TResult? Function()? isLoading,
    TResult? Function()? registered,
    TResult? Function(String message)? userError,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoggedIn)? isLoggedIn,
    TResult Function()? isLoading,
    TResult Function()? registered,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Registered value) registered,
    required TResult Function(UserError value) userError,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsLoggedIn value)? isLoggedIn,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(UserError value)? userError,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Registered value)? registered,
    TResult Function(UserError value)? userError,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements UserState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$$_RegisteredCopyWith<$Res> {
  factory _$$_RegisteredCopyWith(
          _$_Registered value, $Res Function(_$_Registered) then) =
      __$$_RegisteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisteredCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_Registered>
    implements _$$_RegisteredCopyWith<$Res> {
  __$$_RegisteredCopyWithImpl(
      _$_Registered _value, $Res Function(_$_Registered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Registered implements _Registered {
  const _$_Registered();

  @override
  String toString() {
    return 'UserState.registered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Registered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoggedIn) isLoggedIn,
    required TResult Function() isLoading,
    required TResult Function() registered,
    required TResult Function(String message) userError,
  }) {
    return registered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoggedIn)? isLoggedIn,
    TResult? Function()? isLoading,
    TResult? Function()? registered,
    TResult? Function(String message)? userError,
  }) {
    return registered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoggedIn)? isLoggedIn,
    TResult Function()? isLoading,
    TResult Function()? registered,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Registered value) registered,
    required TResult Function(UserError value) userError,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsLoggedIn value)? isLoggedIn,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(UserError value)? userError,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Registered value)? registered,
    TResult Function(UserError value)? userError,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _Registered implements UserState {
  const factory _Registered() = _$_Registered;
}

/// @nodoc
abstract class _$$UserErrorCopyWith<$Res> {
  factory _$$UserErrorCopyWith(
          _$UserError value, $Res Function(_$UserError) then) =
      __$$UserErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserErrorCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserError>
    implements _$$UserErrorCopyWith<$Res> {
  __$$UserErrorCopyWithImpl(
      _$UserError _value, $Res Function(_$UserError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserError implements UserError {
  const _$UserError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.userError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserErrorCopyWith<_$UserError> get copyWith =>
      __$$UserErrorCopyWithImpl<_$UserError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isLoggedIn) isLoggedIn,
    required TResult Function() isLoading,
    required TResult Function() registered,
    required TResult Function(String message) userError,
  }) {
    return userError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isLoggedIn)? isLoggedIn,
    TResult? Function()? isLoading,
    TResult? Function()? registered,
    TResult? Function(String message)? userError,
  }) {
    return userError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isLoggedIn)? isLoggedIn,
    TResult Function()? isLoading,
    TResult Function()? registered,
    TResult Function(String message)? userError,
    required TResult orElse(),
  }) {
    if (userError != null) {
      return userError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoggedIn value) isLoggedIn,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Registered value) registered,
    required TResult Function(UserError value) userError,
  }) {
    return userError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsLoggedIn value)? isLoggedIn,
    TResult? Function(_IsLoading value)? isLoading,
    TResult? Function(_Registered value)? registered,
    TResult? Function(UserError value)? userError,
  }) {
    return userError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoggedIn value)? isLoggedIn,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Registered value)? registered,
    TResult Function(UserError value)? userError,
    required TResult orElse(),
  }) {
    if (userError != null) {
      return userError(this);
    }
    return orElse();
  }
}

abstract class UserError implements UserState {
  const factory UserError({required final String message}) = _$UserError;

  String get message;
  @JsonKey(ignore: true)
  _$$UserErrorCopyWith<_$UserError> get copyWith =>
      throw _privateConstructorUsedError;
}
