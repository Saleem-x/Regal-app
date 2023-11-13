// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      mob: json['mob'] as String?,
      pin: json['pin'] as String?,
      datakey: json['datakey'] as String?,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'mob': instance.mob,
      'pin': instance.pin,
      'datakey': instance.datakey,
    };
