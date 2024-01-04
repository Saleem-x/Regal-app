import 'package:json_annotation/json_annotation.dart';

part 'new_scheme_home_in_model.g.dart';

@JsonSerializable()
class NewSchemeHomeInModel {
  @JsonKey(name: 'MobileNo')
  String? mobileNo;
  @JsonKey(name: 'SchemeGroupId')
  String? schemeGroupId;
  @JsonKey(name: 'InstAmt')
  String? instAmt;
  @JsonKey(name: 'BranchId')
  String? branchId;
  String? datakey;
  String? empId;
  String? newCusName;
  String? newCusId;

  NewSchemeHomeInModel({
    this.mobileNo,
    this.schemeGroupId,
    this.instAmt,
    this.branchId,
    this.datakey,
    this.empId,
    this.newCusName,
    this.newCusId,
  });

  factory NewSchemeHomeInModel.fromJson(Map<String, dynamic> json) {
    return _$NewSchemeHomeInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewSchemeHomeInModelToJson(this);
}
