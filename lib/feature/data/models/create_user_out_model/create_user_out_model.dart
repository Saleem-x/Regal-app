import 'package:json_annotation/json_annotation.dart';

part 'create_user_out_model.g.dart';

@JsonSerializable()
class CreateUserOutModel {
  @JsonKey(name: 'transID')
  String? transId;
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Descr')
  String? descr;
  @JsonKey(name: 'CusId')
  String? cusId;
  String? goldRate;
  String? subCodes;
  @JsonKey(name: 'SchemeNo')
  String? schemeNo;
  @JsonKey(name: 'JoinID')
  String? joinId;
  @JsonKey(name: 'MerchantId')
  String? merchantId;

  CreateUserOutModel({
    this.transId,
    this.title,
    this.descr,
    this.cusId,
    this.goldRate,
    this.subCodes,
    this.schemeNo,
    this.joinId,
    this.merchantId,
  });

  factory CreateUserOutModel.fromJson(Map<String, dynamic> json) {
    return _$CreateUserOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreateUserOutModelToJson(this);
}
