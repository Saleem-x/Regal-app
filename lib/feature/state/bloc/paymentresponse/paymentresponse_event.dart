part of 'paymentresponse_bloc.dart';

@freezed
class PaymentresponseEvent with _$PaymentresponseEvent {
  const factory PaymentresponseEvent.checkpaymentresponse(
      {required String response}) = CheckpaymentresponseEvent;

  const factory PaymentresponseEvent.rsetresponseEvent() = ResetresponseEvent;
}
