part of 'resetpin_bloc.dart';

@freezed
class ResetpinEvent with _$ResetpinEvent {
  const factory ResetpinEvent.sendOtp({required String mobileNO}) =
      SendOtpEvent;
  const factory ResetpinEvent.verfiOtpEvent(
      {required String mobileNO, required String otp}) = VerfiOtpEvent;
  const factory ResetpinEvent.otptimerStateEvent() = OtptimerStateEvent;

  const factory ResetpinEvent.otpscreenresetEvent() = OtpscreenresetEvent;
}
