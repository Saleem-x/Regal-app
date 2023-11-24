part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.paymentinitial() = Paymentinitial;

  const factory PaymentState.paymentSuccessState() = PaymentSuccessState;

  const factory PaymentState.paymentFailedState() = PaymentFailedState;

  factory PaymentState.initial() => PaymentState.initial();
}
