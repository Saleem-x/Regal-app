part of 'newschemeotp_bloc.dart';

@freezed
class NewschemeotpEvent with _$NewschemeotpEvent {
  const factory NewschemeotpEvent.sendOtp({required String mobileNO}) =
      SendOtpEvent;
  const factory NewschemeotpEvent.verfiOtpEvent(
      {required String mobileNO, required String otp}) = VerfiOtpEvent;
      const factory NewschemeotpEvent.otptimerStateEvent() = OtptimerStateEvent;
      

  const factory NewschemeotpEvent.otpscreenresetEvent() = OtpscreenresetEvent;
}
