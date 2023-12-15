// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_scheme_home_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewSchemeHomeOutModel _$NewSchemeHomeOutModelFromJson(
        Map<String, dynamic> json) =>
    NewSchemeHomeOutModel(
      transId: json['transID'] as int?,
      title: json['Title'] as String?,
      descr: json['Descr'] as String?,
      cusId: json['CusId'] as String?,
      goldRate: json['goldRate'] as String?,
      subCodes: json['subCodes'] as String?,
      schemeNo: json['SchemeNo'] as String?,
      joinId: json['JoinID'] as String?,
      merchantId: json['MerchantId'] as String?,
      instAmt: json['InstAmt'] as String?,
      schemeName: json['SchemeName'] as String?,
    );

Map<String, dynamic> _$NewSchemeHomeOutModelToJson(
        NewSchemeHomeOutModel instance) =>
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
      'InstAmt': instance.instAmt,
      'SchemeName': instance.schemeName,
    };
