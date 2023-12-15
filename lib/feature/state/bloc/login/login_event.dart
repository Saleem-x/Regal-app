part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginEvent({required LoginModel logindata}) =
      UserLoginEvent;
  const factory LoginEvent.loginresetEvent() = LoginresetEvent;
  const factory LoginEvent.addLoadingEvent() = AddLoadingEvent;
}
