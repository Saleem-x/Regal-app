import 'package:json_annotation/json_annotation.dart';

part 'create_new_user_scheme_model.g.dart';

@JsonSerializable()
class CreateNewUserSchemeModel {
  @JsonKey(name: 'CusName')
  String? cusName;
  @JsonKey(name: 'Address1')
  String? address1;
  @JsonKey(name: 'Address2')
  String? address2;
  @JsonKey(name: 'NomineeName')
  String? nomineeName;
  @JsonKey(name: 'MobileNo')
  String? mobileNo;
  @JsonKey(name: 'InstAmt')
  String? instAmt;
  @JsonKey(name: 'EmpId')
  String? empId;
  @JsonKey(name: 'BranchId')
  String? branchId;
  @JsonKey(name: 'CusAadharNo')
  String? cusAadharNo;
  @JsonKey(name: 'CusPin')
  String? cusPin;
  @JsonKey(name: 'SchemeGroupId')
  String? schemeGroupId;
  @JsonKey(name: 'Relationship')
  String? relationship;
  @JsonKey(name: 'Dob')
  String? dob;
  @JsonKey(name: 'CustomerImage')
  String? customerImage;
  @JsonKey(name: 'DocTypeId')
  String? docTypeId;
  @JsonKey(name: 'DocFrontImage')
  String? docFrontImage;
  @JsonKey(name: 'DocBackImage')
  String? docBackImage;
  @JsonKey(name: 'datakey')
  String? datakey;

  CreateNewUserSchemeModel({
    this.cusName,
    this.address1,
    this.address2,
    this.nomineeName,
    this.mobileNo,
    this.instAmt,
    this.empId,
    this.branchId,
    this.cusAadharNo,
    this.cusPin,
    this.schemeGroupId,
    this.relationship,
    this.dob,
    this.customerImage,
    this.docTypeId,
    this.docFrontImage,
    this.docBackImage,
    this.datakey,
  });

  factory CreateNewUserSchemeModel.fromJson(Map<String, dynamic> json) {
    return _$CreateNewUserSchemeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreateNewUserSchemeModelToJson(this);
}
