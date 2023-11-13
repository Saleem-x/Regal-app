// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uset_base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBaseModel _$UserBaseModelFromJson(Map<String, dynamic> json) =>
    UserBaseModel(
      cusId: json['cusID'] as String?,
      cusName: json['cus_Name'],
      cusMobileNumber: json['cus_MobileNumber'],
      cusAddr: json['cus_addr'] as String?,
      cusCity: json['cus_city'] as String?,
      cusState: json['cus_state'] as String?,
      cusCountry: json['cus_country'] as String?,
      cusPin: json['cus_pin'] as String?,
      cusEmail: json['cus_email'] as String?,
      title: json['Title'] as String?,
      descr: json['Descr'] as String?,
      status: json['Status'] as String?,
      branchId: json['BranchId'],
      orderSeq: json['OrderSeq'],
    );

Map<String, dynamic> _$UserBaseModelToJson(UserBaseModel instance) =>
    <String, dynamic>{
      'cusID': instance.cusId,
      'cus_Name': instance.cusName,
      'cus_MobileNumber': instance.cusMobileNumber,
      'cus_addr': instance.cusAddr,
      'cus_city': instance.cusCity,
      'cus_state': instance.cusState,
      'cus_country': instance.cusCountry,
      'cus_pin': instance.cusPin,
      'cus_email': instance.cusEmail,
      'Title': instance.title,
      'Descr': instance.descr,
      'Status': instance.status,
      'BranchId': instance.branchId,
      'OrderSeq': instance.orderSeq,
    };
