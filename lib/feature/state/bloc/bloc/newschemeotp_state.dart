part of 'newschemeotp_bloc.dart';

@freezed
class NewschemeotpState with _$NewschemeotpState {
  const factory NewschemeotpState.otpstateinitial() = Otpstateinitial;
  const factory NewschemeotpState.otpSendState() = OtpSendState;
  const factory NewschemeotpState.verifiedOtpState() = VerifyOtpState;

  const factory NewschemeotpState.facingissuestate() = Facingissuestate;

  const factory NewschemeotpState.otpVerificationFailed(
      {required String otpmodel}) = OtpVerificationFailed;

  factory NewschemeotpState.initial() =>
      const NewschemeotpState.otpstateinitial();
}
