// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginModel logindata) loginEvent,
    required TResult Function() loginresetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginModel logindata)? loginEvent,
    TResult? Function()? loginresetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginModel logindata)? loginEvent,
    TResult Function()? loginresetEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) loginEvent,
    required TResult Function(LoginresetEvent value) loginresetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? loginEvent,
    TResult? Function(LoginresetEvent value)? loginresetEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? loginEvent,
    TResult Function(LoginresetEvent value)? loginresetEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserLoginEventImplCopyWith<$Res> {
  factory _$$UserLoginEventImplCopyWith(_$UserLoginEventImpl value,
          $Res Function(_$UserLoginEventImpl) then) =
      __$$UserLoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginModel logindata});
}

/// @nodoc
class __$$UserLoginEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UserLoginEventImpl>
    implements _$$UserLoginEventImplCopyWith<$Res> {
  __$$UserLoginEventImplCopyWithImpl(
      _$UserLoginEventImpl _value, $Res Function(_$UserLoginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logindata = null,
  }) {
    return _then(_$UserLoginEventImpl(
      logindata: null == logindata
          ? _value.logindata
          : logindata // ignore: cast_nullable_to_non_nullable
              as LoginModel,
    ));
  }
}

/// @nodoc

class _$UserLoginEventImpl implements UserLoginEvent {
  const _$UserLoginEventImpl({required this.logindata});

  @override
  final LoginModel logindata;

  @override
  String toString() {
    return 'LoginEvent.loginEvent(logindata: $logindata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginEventImpl &&
            (identical(other.logindata, logindata) ||
                other.logindata == logindata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, logindata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginEventImplCopyWith<_$UserLoginEventImpl> get copyWith =>
      __$$UserLoginEventImplCopyWithImpl<_$UserLoginEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginModel logindata) loginEvent,
    required TResult Function() loginresetEvent,
  }) {
    return loginEvent(logindata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginModel logindata)? loginEvent,
    TResult? Function()? loginresetEvent,
  }) {
    return loginEvent?.call(logindata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginModel logindata)? loginEvent,
    TResult Function()? loginresetEvent,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(logindata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) loginEvent,
    required TResult Function(LoginresetEvent value) loginresetEvent,
  }) {
    return loginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? loginEvent,
    TResult? Function(LoginresetEvent value)? loginresetEvent,
  }) {
    return loginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? loginEvent,
    TResult Function(LoginresetEvent value)? loginresetEvent,
    required TResult orElse(),
  }) {
    if (loginEvent != null) {
      return loginEvent(this);
    }
    return orElse();
  }
}

abstract class UserLoginEvent implements LoginEvent {
  const factory UserLoginEvent({required final LoginModel logindata}) =
      _$UserLoginEventImpl;

  LoginModel get logindata;
  @JsonKey(ignore: true)
  _$$UserLoginEventImplCopyWith<_$UserLoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginresetEventImplCopyWith<$Res> {
  factory _$$LoginresetEventImplCopyWith(_$LoginresetEventImpl value,
          $Res Function(_$LoginresetEventImpl) then) =
      __$$LoginresetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginresetEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginresetEventImpl>
    implements _$$LoginresetEventImplCopyWith<$Res> {
  __$$LoginresetEventImplCopyWithImpl(
      _$LoginresetEventImpl _value, $Res Function(_$LoginresetEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginresetEventImpl implements LoginresetEvent {
  const _$LoginresetEventImpl();

  @override
  String toString() {
    return 'LoginEvent.loginresetEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginresetEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginModel logindata) loginEvent,
    required TResult Function() loginresetEvent,
  }) {
    return loginresetEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginModel logindata)? loginEvent,
    TResult? Function()? loginresetEvent,
  }) {
    return loginresetEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginModel logindata)? loginEvent,
    TResult Function()? loginresetEvent,
    required TResult orElse(),
  }) {
    if (loginresetEvent != null) {
      return loginresetEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) loginEvent,
    required TResult Function(LoginresetEvent value) loginresetEvent,
  }) {
    return loginresetEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? loginEvent,
    TResult? Function(LoginresetEvent value)? loginresetEvent,
  }) {
    return loginresetEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? loginEvent,
    TResult Function(LoginresetEvent value)? loginresetEvent,
    required TResult orElse(),
  }) {
    if (loginresetEvent != null) {
      return loginresetEvent(this);
    }
    return orElse();
  }
}

abstract class LoginresetEvent implements LoginEvent {
  const factory LoginresetEvent() = _$LoginresetEventImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialstate,
    required TResult Function(UserBaseModel user) loginSuccessState,
    required TResult Function(String issue) loginFailedState,
    required TResult Function() loginLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialstate,
    TResult? Function(UserBaseModel user)? loginSuccessState,
    TResult? Function(String issue)? loginFailedState,
    TResult? Function()? loginLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialstate,
    TResult Function(UserBaseModel user)? loginSuccessState,
    TResult Function(String issue)? loginFailedState,
    TResult Function()? loginLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialstate value) initialstate,
    required TResult Function(LoginSuccessState value) loginSuccessState,
    required TResult Function(_loginFailedState value) loginFailedState,
    required TResult Function(_loginLoadingState value) loginLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialstate value)? initialstate,
    TResult? Function(LoginSuccessState value)? loginSuccessState,
    TResult? Function(_loginFailedState value)? loginFailedState,
    TResult? Function(_loginLoadingState value)? loginLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialstate value)? initialstate,
    TResult Function(LoginSuccessState value)? loginSuccessState,
    TResult Function(_loginFailedState value)? loginFailedState,
    TResult Function(_loginLoadingState value)? loginLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialstateImplCopyWith<$Res> {
  factory _$$InitialstateImplCopyWith(
          _$InitialstateImpl value, $Res Function(_$InitialstateImpl) then) =
      __$$InitialstateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialstateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialstateImpl>
    implements _$$InitialstateImplCopyWith<$Res> {
  __$$InitialstateImplCopyWithImpl(
      _$InitialstateImpl _value, $Res Function(_$InitialstateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialstateImpl implements Initialstate {
  const _$InitialstateImpl();

  @override
  String toString() {
    return 'LoginState.initialstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialstateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialstate,
    required TResult Function(UserBaseModel user) loginSuccessState,
    required TResult Function(String issue) loginFailedState,
    required TResult Function() loginLoadingState,
  }) {
    return initialstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialstate,
    TResult? Function(UserBaseModel user)? loginSuccessState,
    TResult? Function(String issue)? loginFailedState,
    TResult? Function()? loginLoadingState,
  }) {
    return initialstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialstate,
    TResult Function(UserBaseModel user)? loginSuccessState,
    TResult Function(String issue)? loginFailedState,
    TResult Function()? loginLoadingState,
    required TResult orElse(),
  }) {
    if (initialstate != null) {
      return initialstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialstate value) initialstate,
    required TResult Function(LoginSuccessState value) loginSuccessState,
    required TResult Function(_loginFailedState value) loginFailedState,
    required TResult Function(_loginLoadingState value) loginLoadingState,
  }) {
    return initialstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialstate value)? initialstate,
    TResult? Function(LoginSuccessState value)? loginSuccessState,
    TResult? Function(_loginFailedState value)? loginFailedState,
    TResult? Function(_loginLoadingState value)? loginLoadingState,
  }) {
    return initialstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialstate value)? initialstate,
    TResult Function(LoginSuccessState value)? loginSuccessState,
    TResult Function(_loginFailedState value)? loginFailedState,
    TResult Function(_loginLoadingState value)? loginLoadingState,
    required TResult orElse(),
  }) {
    if (initialstate != null) {
      return initialstate(this);
    }
    return orElse();
  }
}

abstract class Initialstate implements LoginState {
  const factory Initialstate() = _$InitialstateImpl;
}

/// @nodoc
abstract class _$$LoginSuccessStateImplCopyWith<$Res> {
  factory _$$LoginSuccessStateImplCopyWith(_$LoginSuccessStateImpl value,
          $Res Function(_$LoginSuccessStateImpl) then) =
      __$$LoginSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserBaseModel user});
}

/// @nodoc
class __$$LoginSuccessStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccessStateImpl>
    implements _$$LoginSuccessStateImplCopyWith<$Res> {
  __$$LoginSuccessStateImplCopyWithImpl(_$LoginSuccessStateImpl _value,
      $Res Function(_$LoginSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginSuccessStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserBaseModel,
    ));
  }
}

/// @nodoc

class _$LoginSuccessStateImpl implements LoginSuccessState {
  const _$LoginSuccessStateImpl({required this.user});

  @override
  final UserBaseModel user;

  @override
  String toString() {
    return 'LoginState.loginSuccessState(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessStateImplCopyWith<_$LoginSuccessStateImpl> get copyWith =>
      __$$LoginSuccessStateImplCopyWithImpl<_$LoginSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialstate,
    required TResult Function(UserBaseModel user) loginSuccessState,
    required TResult Function(String issue) loginFailedState,
    required TResult Function() loginLoadingState,
  }) {
    return loginSuccessState(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialstate,
    TResult? Function(UserBaseModel user)? loginSuccessState,
    TResult? Function(String issue)? loginFailedState,
    TResult? Function()? loginLoadingState,
  }) {
    return loginSuccessState?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialstate,
    TResult Function(UserBaseModel user)? loginSuccessState,
    TResult Function(String issue)? loginFailedState,
    TResult Function()? loginLoadingState,
    required TResult orElse(),
  }) {
    if (loginSuccessState != null) {
      return loginSuccessState(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialstate value) initialstate,
    required TResult Function(LoginSuccessState value) loginSuccessState,
    required TResult Function(_loginFailedState value) loginFailedState,
    required TResult Function(_loginLoadingState value) loginLoadingState,
  }) {
    return loginSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialstate value)? initialstate,
    TResult? Function(LoginSuccessState value)? loginSuccessState,
    TResult? Function(_loginFailedState value)? loginFailedState,
    TResult? Function(_loginLoadingState value)? loginLoadingState,
  }) {
    return loginSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialstate value)? initialstate,
    TResult Function(LoginSuccessState value)? loginSuccessState,
    TResult Function(_loginFailedState value)? loginFailedState,
    TResult Function(_loginLoadingState value)? loginLoadingState,
    required TResult orElse(),
  }) {
    if (loginSuccessState != null) {
      return loginSuccessState(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessState implements LoginState {
  const factory LoginSuccessState({required final UserBaseModel user}) =
      _$LoginSuccessStateImpl;

  UserBaseModel get user;
  @JsonKey(ignore: true)
  _$$LoginSuccessStateImplCopyWith<_$LoginSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loginFailedStateImplCopyWith<$Res> {
  factory _$$loginFailedStateImplCopyWith(_$loginFailedStateImpl value,
          $Res Function(_$loginFailedStateImpl) then) =
      __$$loginFailedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String issue});
}

/// @nodoc
class __$$loginFailedStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$loginFailedStateImpl>
    implements _$$loginFailedStateImplCopyWith<$Res> {
  __$$loginFailedStateImplCopyWithImpl(_$loginFailedStateImpl _value,
      $Res Function(_$loginFailedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issue = null,
  }) {
    return _then(_$loginFailedStateImpl(
      issue: null == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$loginFailedStateImpl implements _loginFailedState {
  const _$loginFailedStateImpl({required this.issue});

  @override
  final String issue;

  @override
  String toString() {
    return 'LoginState.loginFailedState(issue: $issue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginFailedStateImpl &&
            (identical(other.issue, issue) || other.issue == issue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, issue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loginFailedStateImplCopyWith<_$loginFailedStateImpl> get copyWith =>
      __$$loginFailedStateImplCopyWithImpl<_$loginFailedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialstate,
    required TResult Function(UserBaseModel user) loginSuccessState,
    required TResult Function(String issue) loginFailedState,
    required TResult Function() loginLoadingState,
  }) {
    return loginFailedState(issue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialstate,
    TResult? Function(UserBaseModel user)? loginSuccessState,
    TResult? Function(String issue)? loginFailedState,
    TResult? Function()? loginLoadingState,
  }) {
    return loginFailedState?.call(issue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialstate,
    TResult Function(UserBaseModel user)? loginSuccessState,
    TResult Function(String issue)? loginFailedState,
    TResult Function()? loginLoadingState,
    required TResult orElse(),
  }) {
    if (loginFailedState != null) {
      return loginFailedState(issue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialstate value) initialstate,
    required TResult Function(LoginSuccessState value) loginSuccessState,
    required TResult Function(_loginFailedState value) loginFailedState,
    required TResult Function(_loginLoadingState value) loginLoadingState,
  }) {
    return loginFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialstate value)? initialstate,
    TResult? Function(LoginSuccessState value)? loginSuccessState,
    TResult? Function(_loginFailedState value)? loginFailedState,
    TResult? Function(_loginLoadingState value)? loginLoadingState,
  }) {
    return loginFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialstate value)? initialstate,
    TResult Function(LoginSuccessState value)? loginSuccessState,
    TResult Function(_loginFailedState value)? loginFailedState,
    TResult Function(_loginLoadingState value)? loginLoadingState,
    required TResult orElse(),
  }) {
    if (loginFailedState != null) {
      return loginFailedState(this);
    }
    return orElse();
  }
}

abstract class _loginFailedState implements LoginState {
  const factory _loginFailedState({required final String issue}) =
      _$loginFailedStateImpl;

  String get issue;
  @JsonKey(ignore: true)
  _$$loginFailedStateImplCopyWith<_$loginFailedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loginLoadingStateImplCopyWith<$Res> {
  factory _$$loginLoadingStateImplCopyWith(_$loginLoadingStateImpl value,
          $Res Function(_$loginLoadingStateImpl) then) =
      __$$loginLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loginLoadingStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$loginLoadingStateImpl>
    implements _$$loginLoadingStateImplCopyWith<$Res> {
  __$$loginLoadingStateImplCopyWithImpl(_$loginLoadingStateImpl _value,
      $Res Function(_$loginLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loginLoadingStateImpl implements _loginLoadingState {
  const _$loginLoadingStateImpl();

  @override
  String toString() {
    return 'LoginState.loginLoadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loginLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialstate,
    required TResult Function(UserBaseModel user) loginSuccessState,
    required TResult Function(String issue) loginFailedState,
    required TResult Function() loginLoadingState,
  }) {
    return loginLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialstate,
    TResult? Function(UserBaseModel user)? loginSuccessState,
    TResult? Function(String issue)? loginFailedState,
    TResult? Function()? loginLoadingState,
  }) {
    return loginLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialstate,
    TResult Function(UserBaseModel user)? loginSuccessState,
    TResult Function(String issue)? loginFailedState,
    TResult Function()? loginLoadingState,
    required TResult orElse(),
  }) {
    if (loginLoadingState != null) {
      return loginLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialstate value) initialstate,
    required TResult Function(LoginSuccessState value) loginSuccessState,
    required TResult Function(_loginFailedState value) loginFailedState,
    required TResult Function(_loginLoadingState value) loginLoadingState,
  }) {
    return loginLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialstate value)? initialstate,
    TResult? Function(LoginSuccessState value)? loginSuccessState,
    TResult? Function(_loginFailedState value)? loginFailedState,
    TResult? Function(_loginLoadingState value)? loginLoadingState,
  }) {
    return loginLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialstate value)? initialstate,
    TResult Function(LoginSuccessState value)? loginSuccessState,
    TResult Function(_loginFailedState value)? loginFailedState,
    TResult Function(_loginLoadingState value)? loginLoadingState,
    required TResult orElse(),
  }) {
    if (loginLoadingState != null) {
      return loginLoadingState(this);
    }
    return orElse();
  }
}

abstract class _loginLoadingState implements LoginState {
  const factory _loginLoadingState() = _$loginLoadingStateImpl;
}
