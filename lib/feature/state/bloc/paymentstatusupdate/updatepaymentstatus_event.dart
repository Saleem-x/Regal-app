part of 'updatepaymentstatus_bloc.dart';

@freezed
class UpdatepaymentstatusEvent with _$UpdatepaymentstatusEvent {
  const factory UpdatepaymentstatusEvent.updatepaymentstatusEvent(
      {required PaymentStatusUpdateModel updatestatus,
      required PaymentRespModel gpayresp}) = PaymentstatusUpdateEvent;
}
