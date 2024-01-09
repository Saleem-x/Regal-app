// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_scheme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerSchemeModel _$CustomerSchemeModelFromJson(Map<String, dynamic> json) =>
    CustomerSchemeModel(
      mobile: json['mobile'] as String?,
      joinId: json['JoinId'] as String?,
      schemeName: json['schemeName'] as String?,
      schemeNo: json['SchemeNo'] as String?,
      branchId: json['Branch_id'] as String?,
      branchDispName: json['BranchDispName'] as String?,
      instAmount: json['InstAmount'] as String?,
      totalAmount: json['TotalAmount'] as String?,
      totalNoofInstalment: json['TotalNoofInstalment'] as String?,
      subId: json['SubID'] as String?,
      custName: json['CustName'] as String?,
      houseName: json['HouseName'] as String?,
      address1: json['Address1'] as String?,
      address2: json['Address2'] as String?,
      merchantCode: json['MerchantCode'] as String?,
    );

Map<String, dynamic> _$CustomerSchemeModelToJson(
        CustomerSchemeModel instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'JoinId': instance.joinId,
      'schemeName': instance.schemeName,
      'SchemeNo': instance.schemeNo,
      'Branch_id': instance.branchId,
      'BranchDispName': instance.branchDispName,
      'InstAmount': instance.instAmount,
      'TotalAmount': instance.totalAmount,
      'TotalNoofInstalment': instance.totalNoofInstalment,
      'SubID': instance.subId,
      'CustName': instance.custName,
      'HouseName': instance.houseName,
      'Address1': instance.address1,
      'Address2': instance.address2,
      'MerchantCode': instance.merchantCode,
    };
