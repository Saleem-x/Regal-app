// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_user_scheme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateNewUserSchemeModel _$CreateNewUserSchemeModelFromJson(
        Map<String, dynamic> json) =>
    CreateNewUserSchemeModel(
      cusName: json['CusName'] as String?,
      address1: json['Address1'] as String?,
      address2: json['Address2'] as String?,
      nomineeName: json['NomineeName'] as String?,
      mobileNo: json['MobileNo'] as String?,
      instAmt: json['InstAmt'] as String?,
      empId: json['EmpId'] as String?,
      branchId: json['BranchId'] as String?,
      cusAadharNo: json['CusAadharNo'] as String?,
      cusPin: json['CusPin'] as String?,
      schemeGroupId: json['SchemeGroupId'] as String?,
      relationship: json['Relationship'] as String?,
      dob: json['Dob'] as String?,
      customerImage: json['CustomerImage'] as String?,
      docTypeId: json['DocTypeId'] as String?,
      docFrontImage: json['DocFrontImage'] as String?,
      docBackImage: json['DocBackImage'] as String?,
      datakey: json['datakey'] as String?,
    );

Map<String, dynamic> _$CreateNewUserSchemeModelToJson(
        CreateNewUserSchemeModel instance) =>
    <String, dynamic>{
      'CusName': instance.cusName,
      'Address1': instance.address1,
      'Address2': instance.address2,
      'NomineeName': instance.nomineeName,
      'MobileNo': instance.mobileNo,
      'InstAmt': instance.instAmt,
      'EmpId': instance.empId,
      'BranchId': instance.branchId,
      'CusAadharNo': instance.cusAadharNo,
      'CusPin': instance.cusPin,
      'SchemeGroupId': instance.schemeGroupId,
      'Relationship': instance.relationship,
      'Dob': instance.dob,
      'CustomerImage': instance.customerImage,
      'DocTypeId': instance.docTypeId,
      'DocFrontImage': instance.docFrontImage,
      'DocBackImage': instance.docBackImage,
      'datakey': instance.datakey,
    };
