part of 'updatenewpin_bloc.dart';

@freezed
class UpdatenewpinState with _$UpdatenewpinState {
  const factory UpdatenewpinState.pinResetSuccessState(
      {required PinResetOtpModel restmodel}) = PinResetSuccessState;
  const factory UpdatenewpinState.pinResetFailedState(
      {required PinResetOtpModel restmodel}) = PinResetFailedState;
  const factory UpdatenewpinState.pinresetinitial() = Pinresetinitial;

  factory UpdatenewpinState.initial() =>
      const UpdatenewpinState.pinresetinitial();
}
