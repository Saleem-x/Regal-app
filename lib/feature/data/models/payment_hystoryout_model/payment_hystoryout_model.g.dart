// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_hystoryout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentHystoryoutModel _$PaymentHystoryoutModelFromJson(
        Map<String, dynamic> json) =>
    PaymentHystoryoutModel(
      title: json['Title'] as String?,
      descr: json['Descr'] as String?,
      cusId: json['cusID'] as String?,
    );

Map<String, dynamic> _$PaymentHystoryoutModelToJson(
        PaymentHystoryoutModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Descr': instance.descr,
      'cusID': instance.cusId,
    };
