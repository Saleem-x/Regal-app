import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/generate_otp_model/generate_otp_model.dart';
import 'package:regal_app/feature/data/models/verify_otp_model/verify_otp_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'newschemeotp_event.dart';
part 'newschemeotp_state.dart';
part 'newschemeotp_bloc.freezed.dart';

@injectable
class NewschemeotpBloc extends Bloc<NewschemeotpEvent, NewschemeotpState> {
  final IManageOTPRepo otprepo;
  NewschemeotpBloc(this.otprepo) : super(NewschemeotpState.initial()) {
    on<SendOtpEvent>((event, emit) async {
      Either<MainFailures, GenerateOtpModel> sendotp =
          await otprepo.sendOtp(event.mobileNO);
      emit(const OtpSendState());

      emit(
        sendotp.fold(
          (l) => l.when(
            clientfailure: () => const Facingissuestate(),
            serverfailure: () => const Facingissuestate(),
            networkerror: (error) => OtpVerificationFailed(otpmodel: error),
          ),
          (r) => const OtpSendSuccess(),
        ),
      );
    });
    on<VerfiOtpEvent>((event, emit) async {
      Either<MainFailures, VerifyOtpModel> sendotp =
          await otprepo.verifyOtP(event.mobileNO, event.otp);

      emit(sendotp.fold(
          (l) => l.when(
                clientfailure: () => const Facingissuestate(),
                serverfailure: () => const Facingissuestate(),
                networkerror: (error) => OtpVerificationFailed(otpmodel: error),
              ),
          (r) => const VerifyOtpState()));
    });

    on<OtpscreenresetEvent>((event, emit) {
      emit(NewschemeotpState.initial());
    });

    on<OtptimerStateEvent>((event, emit) {
      return emit(const OtpSendState());
    });
  }
}
