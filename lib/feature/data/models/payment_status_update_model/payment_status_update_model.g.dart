// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentStatusUpdateModel _$PaymentStatusUpdateModelFromJson(
        Map<String, dynamic> json) =>
    PaymentStatusUpdateModel(
      datakey: json['datakey'] as String?,
      cusId: json['cusID'] as String?,
      goldRate: json['goldRate'] as String?,
      amt: json['amt'] as String?,
      payableAmt: json['payableAmt'] as String?,
      wgt: json['wgt'] as String?,
      joinId: json['joinID'] as String?,
      schemeId: json['schemeID'] as String?,
      response: json['response'] as String?,
      orderId: json['orderID'] as String?,
      subCode: json['subCode'] as String?,
    );

Map<String, dynamic> _$PaymentStatusUpdateModelToJson(
        PaymentStatusUpdateModel instance) =>
    <String, dynamic>{
      'datakey': instance.datakey,
      'cusID': instance.cusId,
      'goldRate': instance.goldRate,
      'amt': instance.amt,
      'payableAmt': instance.payableAmt,
      'wgt': instance.wgt,
      'joinID': instance.joinId,
      'schemeID': instance.schemeId,
      'response': instance.response,
      'orderID': instance.orderId,
      'subCode': instance.subCode,
    };
