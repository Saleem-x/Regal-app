import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:regal_app/core/api/endpoints.dart';

part 'paymentresponse_event.dart';
part 'paymentresponse_state.dart';
part 'paymentresponse_bloc.freezed.dart';

class PaymentresponseBloc
    extends Bloc<PaymentresponseEvent, PaymentresponseState> {
  PaymentresponseBloc() : super(PaymentresponseState.initial()) {
    on<CheckpaymentresponseEvent>((event, emit) {
      logger.e("in bloc");
      return emit(HavePaymentResponseState(response: event.response));
    });

    on<ResetresponseEvent>((event, emit) {
      logger.e("in bloc");
      return emit(const PaymentstateReset());
    });
  }
}
