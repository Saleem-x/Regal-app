// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheme_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SchemeListModel _$SchemeListModelFromJson(Map<String, dynamic> json) =>
    SchemeListModel(
      schemeId: json['SchemeID'] as String?,
      schemeName: json['SchemeName'] as String?,
      schemeCode: json['SchemeCode'] as String?,
    );

Map<String, dynamic> _$SchemeListModelToJson(SchemeListModel instance) =>
    <String, dynamic>{
      'SchemeID': instance.schemeId,
      'SchemeName': instance.schemeName,
      'SchemeCode': instance.schemeCode,
    };
