// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_man_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesManModel _$SalesManModelFromJson(Map<String, dynamic> json) =>
    SalesManModel(
      empName: json['EmpName'] as String?,
      empId: json['EmpId'] as String?,
      empCode: json['EmpCode'] as String?,
    );

Map<String, dynamic> _$SalesManModelToJson(SalesManModel instance) =>
    <String, dynamic>{
      'EmpName': instance.empName,
      'EmpId': instance.empId,
      'EmpCode': instance.empCode,
    };
