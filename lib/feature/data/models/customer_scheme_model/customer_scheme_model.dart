import 'package:json_annotation/json_annotation.dart';

part 'customer_scheme_model.g.dart';

@JsonSerializable()
class CustomerSchemeModel {
  @JsonKey(name: 'mobile')
  String? mobile;
  @JsonKey(name: 'JoinId')
  String? joinId;
  @JsonKey(name: 'schemeName')
  String? schemeName;
  @JsonKey(name: 'SchemeNo')
  String? schemeNo;
  @JsonKey(name: 'Branch_id')
  String? branchId;
  @JsonKey(name: 'BranchDispName')
  String? branchDispName;
  @JsonKey(name: 'InstAmount')
  String? instAmount;
  @JsonKey(name: 'TotalAmount')
  String? totalAmount;
  @JsonKey(name: 'TotalNoofInstalment')
  String? totalNoofInstalment;
  @JsonKey(name: 'SubID')
  String? subId;
  @JsonKey(name: 'CustName')
  String? custName;
  @JsonKey(name: 'HouseName')
  String? houseName;
  @JsonKey(name: 'Address1')
  String? address1;
  @JsonKey(name: 'Address2')
  String? address2;
  @JsonKey(name: 'MerchantCode')
  String? merchantCode;

  CustomerSchemeModel({
    this.mobile,
    this.joinId,
    this.schemeName,
    this.schemeNo,
    this.branchId,
    this.branchDispName,
    this.instAmount,
    this.totalAmount,
    this.totalNoofInstalment,
    this.subId,
    this.custName,
    this.houseName,
    this.address1,
    this.address2,
    this.merchantCode,
  });

  factory CustomerSchemeModel.fromJson(Map<String, dynamic> json) {
    return _$CustomerSchemeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerSchemeModelToJson(this);
}
