import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/pin_reset_otp_model/pin_reset_otp_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'updatenewpin_event.dart';
part 'updatenewpin_state.dart';
part 'updatenewpin_bloc.freezed.dart';

@injectable
class UpdatenewpinBloc extends Bloc<UpdatenewpinEvent, UpdatenewpinState> {
  final IResetPinRepo resetPinRepo;
  UpdatenewpinBloc(this.resetPinRepo) : super(UpdatenewpinState.initial()) {
    on<updateNewPinEvent>((event, emit) async {
      Either<MainFailures, PinResetOtpModel> resetpin =
          await resetPinRepo.resetPin(event.cusID, event.pin);

      emit(resetpin.fold(
          (l) => l.when(
                clientfailure: () => PinResetFailedState(
                    restmodel: PinResetOtpModel(
                        title: 'Failed',
                        cusId: '0',
                        descr: 'Something Went Wrong')),
                serverfailure: () => PinResetFailedState(
                    restmodel: PinResetOtpModel(
                        title: 'Failed',
                        cusId: '0',
                        descr: 'Something Went Wrong')),
                networkerror: (error) => PinResetFailedState(
                    restmodel: PinResetOtpModel(
                        title: 'Failed', cusId: '0', descr: error)),
              ),
          (r) => PinResetSuccessState(restmodel: r)));
    });
  }
}
