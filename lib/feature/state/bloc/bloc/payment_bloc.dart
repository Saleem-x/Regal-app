import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:quantupi/quantupi.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final IPayMentRepo paymentrepo;
  PaymentBloc(this.paymentrepo) : super(PaymentState.initial()) {
    on<InitiatePaymentEvent>(
      (event, emit) async {
        Either<MainFailures, String> payment =
            await paymentrepo.initiatepyament(
          event.upiId,
          event.orderID,
          event.merchatcode,
          app: event.app,
        );
        emit(
          payment.fold(
            (l) => const PaymentFailedState(),
            (r) => const PaymentState.paymentSuccessState(),
          ),
        );
      },
    );
  }
}
