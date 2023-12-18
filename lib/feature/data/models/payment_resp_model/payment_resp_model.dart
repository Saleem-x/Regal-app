import 'package:json_annotation/json_annotation.dart';

part 'payment_resp_model.g.dart';

@JsonSerializable()
class PaymentRespModel {
  String? txnId;
  String? responseCode;
  @JsonKey(name: 'Status')
  String? status;
  String? txnRef;

  PaymentRespModel({
    this.txnId,
    this.responseCode,
    this.status,
    this.txnRef,
  });

  factory PaymentRespModel.fromJson(Map<String, dynamic> json) {
    return _$PaymentRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentRespModelToJson(this);
}
