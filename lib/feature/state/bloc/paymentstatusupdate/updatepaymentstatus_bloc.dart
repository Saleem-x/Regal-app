import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/payment_resp_model/payment_resp_model.dart';
import 'package:regal_app/feature/data/models/payment_status_update_model/payment_status_update_model.dart';
import 'package:regal_app/feature/data/models/payment_status_update_resp_model/payment_status_update_resp_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'updatepaymentstatus_event.dart';
part 'updatepaymentstatus_state.dart';
part 'updatepaymentstatus_bloc.freezed.dart';

@injectable
class UpdatepaymentstatusBloc
    extends Bloc<UpdatepaymentstatusEvent, UpdatepaymentstatusState> {
  final IPaymentStatusUpdateRepo paymentStatusUpdateRepo;
  UpdatepaymentstatusBloc(this.paymentStatusUpdateRepo)
      : super(UpdatepaymentstatusState.initial()) {
    on<PaymentstatusUpdateEvent>((event, emit) async {
      Either<MainFailures, PaymentStatusUpdateRespModel> resp =
          await paymentStatusUpdateRepo.updatepaymentstatus(event.updatestatus);
      logger.e("in payment status bloc");
      emit(
        resp.fold(
          (l) => l.when(
            clientfailure: () => const PaymentstatusUpdateFailedState(
              error: "Something WentWrong",
            ),
            serverfailure: () => const PaymentstatusUpdateFailedState(
              error: "Something WentWrong",
            ),
            networkerror: (error) =>
                PaymentstatusUpdateFailedState(error: error),
          ),
          (r) => UpdatepaymentstatusState.paymentstatusUpdateState(
            resp: r,
            gpayresp: event.gpayresp,
          ),
        ),
      );
    });
  }
}
