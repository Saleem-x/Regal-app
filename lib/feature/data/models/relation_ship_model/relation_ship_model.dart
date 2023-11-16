import 'package:json_annotation/json_annotation.dart';

part 'relation_ship_model.g.dart';

@JsonSerializable()
class RelationShipModel {
  @JsonKey(name: 'RelationId')
  int? relationId;
  @JsonKey(name: 'Relationship')
  String? relationship;

  RelationShipModel({this.relationId, this.relationship});

  factory RelationShipModel.fromJson(Map<String, dynamic> json) {
    return _$RelationShipModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RelationShipModelToJson(this);
}
