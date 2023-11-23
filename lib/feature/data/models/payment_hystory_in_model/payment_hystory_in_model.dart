import 'package:json_annotation/json_annotation.dart';

part 'payment_hystory_in_model.g.dart';

@JsonSerializable()
class PaymentHystoryInModel {
  String? datakey;
  @JsonKey(name: 'cusID')
  String? cusId;
  @JsonKey(name: 'joinID')
  String? joinId;
  @JsonKey(name: 'orderID')
  String? orderId;
  String? payMode;
  String? schemeNo;
  String? payType;
  String? payableAmt;
  String? insAmount;
  String? goldRate;
  String? cumlWgt;
  String? subCode;

  PaymentHystoryInModel({
    this.datakey,
    this.cusId,
    this.joinId,
    this.orderId,
    this.payMode,
    this.schemeNo,
    this.payType,
    this.payableAmt,
    this.insAmount,
    this.goldRate,
    this.cumlWgt,
    this.subCode,
  });

  factory PaymentHystoryInModel.fromJson(Map<String, dynamic> json) {
    return _$PaymentHystoryInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentHystoryInModelToJson(this);
}
