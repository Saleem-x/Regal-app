import 'package:json_annotation/json_annotation.dart';

part 'payment_status_update_model.g.dart';

@JsonSerializable()
class PaymentStatusUpdateModel {
  String? datakey;
  @JsonKey(name: 'cusID')
  String? cusId;
  String? goldRate;
  String? amt;
  String? payableAmt;
  String? wgt;
  @JsonKey(name: 'joinID')
  String? joinId;
  @JsonKey(name: 'schemeID')
  String? schemeId;
  String? response;
  @JsonKey(name: 'orderID')
  String? orderId;
  String? subCode;

  PaymentStatusUpdateModel({
    this.datakey,
    this.cusId,
    this.goldRate,
    this.amt,
    this.payableAmt,
    this.wgt,
    this.joinId,
    this.schemeId,
    this.response,
    this.orderId,
    this.subCode,
  });

  factory PaymentStatusUpdateModel.fromJson(Map<String, dynamic> json) {
    return _$PaymentStatusUpdateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentStatusUpdateModelToJson(this);
}
