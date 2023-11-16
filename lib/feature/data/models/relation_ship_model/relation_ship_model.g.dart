// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation_ship_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RelationShipModel _$RelationShipModelFromJson(Map<String, dynamic> json) =>
    RelationShipModel(
      relationId: json['RelationId'] as int?,
      relationship: json['Relationship'] as String?,
    );

Map<String, dynamic> _$RelationShipModelToJson(RelationShipModel instance) =>
    <String, dynamic>{
      'RelationId': instance.relationId,
      'Relationship': instance.relationship,
    };
