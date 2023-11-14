// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instalment_hystory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstalmentHystoryModel _$InstalmentHystoryModelFromJson(
        Map<String, dynamic> json) =>
    InstalmentHystoryModel(
      joinId: json['JoinId'] as String?,
      schemeNo: json['SchemeNo'] as String?,
      custName: json['CustName'] as String?,
      schemeType: json['SchemeType'] as String?,
      empName: json['EmpName'] as String?,
      receiptDate: json['ReceiptDate'] as String?,
      receiptNo: json['ReceiptNo'] as String?,
      credit: json['Credit'] as String?,
      goldRate: json['GoldRate'] as String?,
      goldWeight: json['GoldWeight'] as String?,
      closingWt: json['ClosingWt'] as String?,
      netAmount: json['NetAmount'] as String?,
      totalAmount: json['totalAmount'] as String?,
    );

Map<String, dynamic> _$InstalmentHystoryModelToJson(
        InstalmentHystoryModel instance) =>
    <String, dynamic>{
      'JoinId': instance.joinId,
      'SchemeNo': instance.schemeNo,
      'CustName': instance.custName,
      'SchemeType': instance.schemeType,
      'EmpName': instance.empName,
      'ReceiptDate': instance.receiptDate,
      'ReceiptNo': instance.receiptNo,
      'Credit': instance.credit,
      'GoldRate': instance.goldRate,
      'GoldWeight': instance.goldWeight,
      'ClosingWt': instance.closingWt,
      'NetAmount': instance.netAmount,
      'totalAmount': instance.totalAmount,
    };
