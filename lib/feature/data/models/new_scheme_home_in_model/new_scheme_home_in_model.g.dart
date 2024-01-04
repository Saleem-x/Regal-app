// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_scheme_home_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewSchemeHomeInModel _$NewSchemeHomeInModelFromJson(
        Map<String, dynamic> json) =>
    NewSchemeHomeInModel(
      mobileNo: json['MobileNo'] as String?,
      schemeGroupId: json['SchemeGroupId'] as String?,
      instAmt: json['InstAmt'] as String?,
      branchId: json['BranchId'] as String?,
      datakey: json['datakey'] as String?,
      empId: json['empId'] as String?,
      newCusName: json['newCusName'] as String?,
      newCusId: json['newCusId'] as String?,
    );

Map<String, dynamic> _$NewSchemeHomeInModelToJson(
        NewSchemeHomeInModel instance) =>
    <String, dynamic>{
      'MobileNo': instance.mobileNo,
      'SchemeGroupId': instance.schemeGroupId,
      'InstAmt': instance.instAmt,
      'BranchId': instance.branchId,
      'datakey': instance.datakey,
      'empId': instance.empId,
      'newCusName': instance.newCusName,
      'newCusId': instance.newCusId,
    };
