// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserOutModel _$CreateUserOutModelFromJson(Map<String, dynamic> json) =>
    CreateUserOutModel(
      transId: json['transID'] as int?,
      title: json['Title'] as String?,
      descr: json['Descr'] as String?,
      cusId: json['CusId'] as String?,
      goldRate: json['goldRate'] as String?,
      subCodes: json['subCodes'] as String?,
      schemeNo: json['SchemeNo'] as String?,
      joinId: json['JoinID'] as String?,
      merchantId: json['MerchantId'] as String?,
    );

Map<String, dynamic> _$CreateUserOutModelToJson(CreateUserOutModel instance) =>
    <String, dynamic>{
      'transID': instance.transId,
      'Title': instance.title,
      'Descr': instance.descr,
      'CusId': instance.cusId,
      'goldRate': instance.goldRate,
      'subCodes': instance.subCodes,
      'SchemeNo': instance.schemeNo,
      'JoinID': instance.joinId,
      'MerchantId': instance.merchantId,
    };
