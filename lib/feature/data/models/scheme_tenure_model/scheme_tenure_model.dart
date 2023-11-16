import 'package:json_annotation/json_annotation.dart';

part 'scheme_tenure_model.g.dart';

@JsonSerializable()
class SchemeTenureModel {
  @JsonKey(name: 'Tenure')
  int? tenure;

  SchemeTenureModel({this.tenure});

  factory SchemeTenureModel.fromJson(Map<String, dynamic> json) {
    return _$SchemeTenureModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SchemeTenureModelToJson(this);
}
