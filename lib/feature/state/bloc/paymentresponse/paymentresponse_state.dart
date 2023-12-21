part of 'paymentresponse_bloc.dart';

@freezed
class PaymentresponseState with _$PaymentresponseState {
  const factory PaymentresponseState.havepaymentResponseState(
      {required String? response}) = HavePaymentResponseState;

  const factory PaymentresponseState.paymentstateReset() = PaymentstateReset;

  const factory PaymentresponseState.responseLoadingState() =
      ResponseLoadingState;

  factory PaymentresponseState.initial() =>
      const PaymentresponseState.havepaymentResponseState(response: null);
}
