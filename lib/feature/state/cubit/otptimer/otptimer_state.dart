part of 'otptimer_cubit.dart';

@freezed
class OtptimerState with _$OtptimerState {
  const factory OtptimerState.setotptimer({required int time}) =
      SetotpTimerState;

  factory OtptimerState.initial() => const OtptimerState.setotptimer(time: 30);
}
