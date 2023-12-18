import 'package:json_annotation/json_annotation.dart';

part 'payment_status_update_resp_model.g.dart';

@JsonSerializable()
class PaymentStatusUpdateRespModel {
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Descr')
  String? descr;
  @JsonKey(name: 'cusID')
  String? cusId;

  PaymentStatusUpdateRespModel({this.title, this.descr, this.cusId});

  factory PaymentStatusUpdateRespModel.fromJson(Map<String, dynamic> json) {
    return _$PaymentStatusUpdateRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentStatusUpdateRespModelToJson(this);
}
