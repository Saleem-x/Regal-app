import 'package:json_annotation/json_annotation.dart';

part 'instalment_hystory_model.g.dart';

@JsonSerializable()
class InstalmentHystoryModel {
  @JsonKey(name: 'JoinId')
  String? joinId;
  @JsonKey(name: 'SchemeNo')
  String? schemeNo;
  @JsonKey(name: 'CustName')
  String? custName;
  @JsonKey(name: 'SchemeType')
  String? schemeType;
  @JsonKey(name: 'EmpName')
  String? empName;
  @JsonKey(name: 'ReceiptDate')
  String? receiptDate;
  @JsonKey(name: 'ReceiptNo')
  String? receiptNo;
  @JsonKey(name: 'Credit')
  String? credit;
  @JsonKey(name: 'GoldRate')
  String? goldRate;
  @JsonKey(name: 'GoldWeight')
  String? goldWeight;
  @JsonKey(name: 'ClosingWt')
  String? closingWt;
  @JsonKey(name: 'NetAmount')
  String? netAmount;
  @JsonKey(name: 'totalAmount')
  String? totalAmount;

  InstalmentHystoryModel({
    this.joinId,
    this.schemeNo,
    this.custName,
    this.schemeType,
    this.empName,
    this.receiptDate,
    this.receiptNo,
    this.credit,
    this.goldRate,
    this.goldWeight,
    this.closingWt,
    this.netAmount,
    this.totalAmount,
  });

  factory InstalmentHystoryModel.fromJson(Map<String, dynamic> json) {
    return _$InstalmentHystoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InstalmentHystoryModelToJson(this);
}
