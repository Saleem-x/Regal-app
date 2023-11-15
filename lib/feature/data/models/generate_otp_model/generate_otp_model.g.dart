// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateOtpModel _$GenerateOtpModelFromJson(Map<String, dynamic> json) =>
    GenerateOtpModel(
      verStatus: json['VerStatus'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$GenerateOtpModelToJson(GenerateOtpModel instance) =>
    <String, dynamic>{
      'VerStatus': instance.verStatus,
      'otp': instance.otp,
    };
