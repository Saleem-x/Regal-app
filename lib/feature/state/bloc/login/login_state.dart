part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initialstate() = Initialstate;
  const factory LoginState.loginSuccessState({required UserBaseModel user}) =
      LoginSuccessState;
  const factory LoginState.loginFailedState({required String issue}) =
      _loginFailedState;
  const factory LoginState.loginLoadingState() = _loginLoadingState;

  factory LoginState.initial() => const LoginState.initialstate();
}
