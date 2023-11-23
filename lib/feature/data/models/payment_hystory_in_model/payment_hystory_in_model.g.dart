// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_hystory_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentHystoryInModel _$PaymentHystoryInModelFromJson(
        Map<String, dynamic> json) =>
    PaymentHystoryInModel(
      datakey: json['datakey'] as String?,
      cusId: json['cusID'] as String?,
      joinId: json['joinID'] as String?,
      orderId: json['orderID'] as String?,
      payMode: json['payMode'] as String?,
      schemeNo: json['schemeNo'] as String?,
      payType: json['payType'] as String?,
      payableAmt: json['payableAmt'] as String?,
      insAmount: json['insAmount'] as String?,
      goldRate: json['goldRate'] as String?,
      cumlWgt: json['cumlWgt'] as String?,
      subCode: json['subCode'] as String?,
    );

Map<String, dynamic> _$PaymentHystoryInModelToJson(
        PaymentHystoryInModel instance) =>
    <String, dynamic>{
      'datakey': instance.datakey,
      'cusID': instance.cusId,
      'joinID': instance.joinId,
      'orderID': instance.orderId,
      'payMode': instance.payMode,
      'schemeNo': instance.schemeNo,
      'payType': instance.payType,
      'payableAmt': instance.payableAmt,
      'insAmount': instance.insAmount,
      'goldRate': instance.goldRate,
      'cumlWgt': instance.cumlWgt,
      'subCode': instance.subCode,
    };
