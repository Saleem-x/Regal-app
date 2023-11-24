part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.initiatePayment(
      {required String upiId,
      required String orderID,
      required String merchatcode,
      required QuantUPIPaymentApps? app}) = InitiatePaymentEvent;
}
