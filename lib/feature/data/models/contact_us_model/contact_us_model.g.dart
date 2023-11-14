// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactUsModel _$ContactUsModelFromJson(Map<String, dynamic> json) =>
    ContactUsModel(
      orgName: json['OrgName'] as String?,
      branchName: json['BranchName'] as String?,
      staffName: json['StaffName'] as String?,
      email: json['Email'] as String?,
      mobile: json['Mobile'] as String?,
      whatsApp: json['WhatsApp'] as String?,
    );

Map<String, dynamic> _$ContactUsModelToJson(ContactUsModel instance) =>
    <String, dynamic>{
      'OrgName': instance.orgName,
      'BranchName': instance.branchName,
      'StaffName': instance.staffName,
      'Email': instance.email,
      'Mobile': instance.mobile,
      'WhatsApp': instance.whatsApp,
    };
