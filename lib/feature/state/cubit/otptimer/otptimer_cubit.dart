import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otptimer_state.dart';
part 'otptimer_cubit.freezed.dart';

class OtptimerCubit extends Cubit<OtptimerState> {
  OtptimerCubit() : super(OtptimerState.initial());

  void settime(int time) {
    emit(
      SetotpTimerState(time: time - 1),
    );
  }

  int start = 30;
  Timer? timer;

  void startTimer() {
    start = 30;
    if (timer != null && !timer!.isActive) {
      const oneSec = Duration(seconds: 1);
      timer = Timer.periodic(
        oneSec,
        (Timer timer) {
          if (start == 0) {
            timer.cancel();

            emit(const SetotpTimerState(time: 30));
          } else {
            emit(SetotpTimerState(time: start--));
          }
        },
      );
    }
  }
}
