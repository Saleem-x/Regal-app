import 'package:json_annotation/json_annotation.dart';

part 'create_user_out_model.g.dart';

@JsonSerializable()
class CreateUserOutModel {
  @JsonKey(name: 'transID')
  int? transId;
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Descr')
  String? descr;
  @JsonKey(name: 'CusId')
  String? cusId;
  @JsonKey(name: 'goldRate')
  String? goldRate;
  @JsonKey(name: 'subCodes')
  String? subCodes;
  @JsonKey(name: 'SchemeNo')
  String? schemeNo;
  @JsonKey(name: 'JoinID')
  String? joinId;
  @JsonKey(name: 'MerchantId')
  String? merchantId;
  @JsonKey(name: 'SchemeName')
  String? schemeName;

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
    this.schemeName,
  });

  factory CreateUserOutModel.fromJson(Map<String, dynamic> json) {
    return _$CreateUserOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreateUserOutModelToJson(this);
}
