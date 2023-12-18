// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentRespModel _$PaymentRespModelFromJson(Map<String, dynamic> json) =>
    PaymentRespModel(
      txnId: json['txnId'] as String?,
      responseCode: json['responseCode'] as String?,
      status: json['Status'] as String?,
      txnRef: json['txnRef'] as String?,
    );

Map<String, dynamic> _$PaymentRespModelToJson(PaymentRespModel instance) =>
    <String, dynamic>{
      'txnId': instance.txnId,
      'responseCode': instance.responseCode,
      'Status': instance.status,
      'txnRef': instance.txnRef,
    };
