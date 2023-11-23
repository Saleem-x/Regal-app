import 'package:json_annotation/json_annotation.dart';

part 'payment_hystoryout_model.g.dart';

@JsonSerializable()
class PaymentHystoryoutModel {
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Descr')
  String? descr;
  @JsonKey(name: 'cusID')
  String? cusId;

  PaymentHystoryoutModel({this.title, this.descr, this.cusId});

  factory PaymentHystoryoutModel.fromJson(Map<String, dynamic> json) {
    return _$PaymentHystoryoutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentHystoryoutModelToJson(this);
}
