import 'package:json_annotation/json_annotation.dart';

part 'scheme_details_model.g.dart';

@JsonSerializable()
class SchemeDetailsModel {
  @JsonKey(name: 'SchemeNo')
  String? schemeNo;
  @JsonKey(name: 'GoldWeight')
  String? goldWeight;
  String? goldRate;
  @JsonKey(name: 'TotAmount')
  String? totAmount;
  @JsonKey(name: 'Onepay')
  String? onepay;
  @JsonKey(name: 'DueDate')
  String? dueDate;
  @JsonKey(name: 'noofInst')
  String? noofInst;
  @JsonKey(name: 'IssueDate')
  String? issueDate;
  @JsonKey(name: 'ClosingDate')
  String? closingDate;
  @JsonKey(name: 'joinID')
  String? joinId;
  @JsonKey(name: 'schemeName')
  String? schemeName;
  @JsonKey(name: 'paidInst')
  String? paidInst;
  @JsonKey(name: 'schemeAmount')
  String? schemeAmount;
  @JsonKey(name: 'CustName')
  String? custName;
  @JsonKey(name: 'billing_address')
  String? billingAddress;
  @JsonKey(name: 'billing_city')
  String? billingCity;
  @JsonKey(name: 'billing_country')
  String? billingCountry;
  @JsonKey(name: 'billing_email')
  String? billingEmail;
  @JsonKey(name: 'billing_state')
  String? billingState;
  @JsonKey(name: 'billing_zip')
  String? billingZip;

  SchemeDetailsModel({
    this.schemeNo,
    this.goldWeight,
    this.goldRate,
    this.totAmount,
    this.onepay,
    this.dueDate,
    this.noofInst,
    this.issueDate,
    this.closingDate,
    this.joinId,
    this.schemeName,
    this.paidInst,
    this.schemeAmount,
    this.custName,
    this.billingAddress,
    this.billingCity,
    this.billingCountry,
    this.billingEmail,
    this.billingState,
    this.billingZip,
  });

  factory SchemeDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$SchemeDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SchemeDetailsModelToJson(this);
}
