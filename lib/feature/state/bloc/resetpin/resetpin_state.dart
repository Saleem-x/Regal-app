part of 'resetpin_bloc.dart';

@freezed
class ResetpinState with _$ResetpinState {
  const factory ResetpinState.otpstateinitial() = Otpstateinitial;
  const factory ResetpinState.otpSendState() = OtpSendState;
  const factory ResetpinState.otpSendSuccess(
      {required PinResetOtpModel pinResetOtpModel}) = OtpSendSuccess;

  const factory ResetpinState.verifiedOtpState(
      {required PinResetOtpModel pinResetOtpModel}) = VerifyOtpState;

  const factory ResetpinState.facingissuestate() = Facingissuestate;

  const factory ResetpinState.otpVerificationFailed(
      {required String otpmodel}) = OtpVerificationFailed;

  factory ResetpinState.initial() => const ResetpinState.otpstateinitial();
}
