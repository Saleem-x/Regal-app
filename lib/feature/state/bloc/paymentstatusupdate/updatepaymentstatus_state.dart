part of 'updatepaymentstatus_bloc.dart';

@freezed
class UpdatepaymentstatusState with _$UpdatepaymentstatusState {
  const factory UpdatepaymentstatusState.paymentstatusUpdateState(
      {required PaymentStatusUpdateRespModel? resp,
      required PaymentRespModel? gpayresp}) = _paymentstatusUpdateState;

  const factory UpdatepaymentstatusState.paymentstatusUpdateFailedState(
      {required String error}) = PaymentstatusUpdateFailedState;

  factory UpdatepaymentstatusState.initial() =>
      const UpdatepaymentstatusState.paymentstatusUpdateState(
          resp: null, gpayresp: null);
}
