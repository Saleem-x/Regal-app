import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/pin_reset_otp_model/pin_reset_otp_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'resetpin_event.dart';
part 'resetpin_state.dart';
part 'resetpin_bloc.freezed.dart';

@injectable
class ResetpinBloc extends Bloc<ResetpinEvent, ResetpinState> {
  final IResetPinRepo resetPinRepo;
  ResetpinBloc(this.resetPinRepo) : super(ResetpinState.initial()) {
    on<SendOtpEvent>(
      (event, emit) async {
        Either<MainFailures, PinResetOtpModel> sendotp =
            await resetPinRepo.sendOtp(
          event.mobileNO,
        );
        // emit(const OtpSendState());

        emit(
          sendotp.fold(
            (l) => l.when(
              clientfailure: () => const Facingissuestate(),
              serverfailure: () => const Facingissuestate(),
              networkerror: (error) => OtpVerificationFailed(otpmodel: error),
            ),
            (r) => OtpSendSuccess(pinResetOtpModel: r),
          ),
        );
      },
    );
    on<VerfiOtpEvent>(
      (event, emit) async {
        Either<MainFailures, PinResetOtpModel> sendotp =
            await resetPinRepo.verifyOtP(event.mobileNO, event.otp);

        emit(
          sendotp.fold(
            (l) => l.when(
              clientfailure: () => const Facingissuestate(),
              serverfailure: () => const Facingissuestate(),
              networkerror: (error) => OtpVerificationFailed(otpmodel: error),
            ),
            (r) => VerifyOtpState(pinResetOtpModel: r),
          ),
        );
      },
    );
    on<OtpscreenresetEvent>((event, emit) {
      emit(ResetpinState.initial());
    });

    on<OtptimerStateEvent>((event, emit) {
      return emit(const OtpSendState());
    });
  }
}
