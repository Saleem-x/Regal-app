import 'package:json_annotation/json_annotation.dart';

part 'new_scheme_home_out_model.g.dart';

@JsonSerializable()
class NewSchemeHomeOutModel {
  @JsonKey(name: 'transID')
  int? transId;
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
  @JsonKey(name: 'InstAmt')
  String? instAmt;
  @JsonKey(name: 'SchemeName')
  String? schemeName;

  NewSchemeHomeOutModel({
    this.transId,
    this.title,
    this.descr,
    this.cusId,
    this.goldRate,
    this.subCodes,
    this.schemeNo,
    this.joinId,
    this.merchantId,
    this.instAmt,
    this.schemeName,
  });

  factory NewSchemeHomeOutModel.fromJson(Map<String, dynamic> json) {
    return _$NewSchemeHomeOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewSchemeHomeOutModelToJson(this);
}
