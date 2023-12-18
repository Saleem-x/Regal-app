// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status_update_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentStatusUpdateRespModel _$PaymentStatusUpdateRespModelFromJson(
        Map<String, dynamic> json) =>
    PaymentStatusUpdateRespModel(
      title: json['Title'] as String?,
      descr: json['Descr'] as String?,
      cusId: json['cusID'] as String?,
    );

Map<String, dynamic> _$PaymentStatusUpdateRespModelToJson(
        PaymentStatusUpdateRespModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Descr': instance.descr,
      'cusID': instance.cusId,
    };
