import 'package:json_annotation/json_annotation.dart';

part 'contact_us_model.g.dart';

@JsonSerializable()
class ContactUsModel {
  @JsonKey(name: 'OrgName')
  String? orgName;
  @JsonKey(name: 'BranchName')
  String? branchName;
  @JsonKey(name: 'StaffName')
  String? staffName;
  @JsonKey(name: 'Email')
  String? email;
  @JsonKey(name: 'Mobile')
  String? mobile;
  @JsonKey(name: 'WhatsApp')
  String? whatsApp;

  ContactUsModel({
    this.orgName,
    this.branchName,
    this.staffName,
    this.email,
    this.mobile,
    this.whatsApp,
  });

  factory ContactUsModel.fromJson(Map<String, dynamic> json) {
    return _$ContactUsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ContactUsModelToJson(this);
}
