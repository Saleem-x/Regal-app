import 'package:json_annotation/json_annotation.dart';

part 'scheme_list_model.g.dart';

@JsonSerializable()
class SchemeListModel {
  @JsonKey(name: 'SchemeID')
  String? schemeId;
  @JsonKey(name: 'SchemeName')
  String? schemeName;
  @JsonKey(name: 'SchemeCode')
  String? schemeCode;

  SchemeListModel({this.schemeId, this.schemeName, this.schemeCode});

  factory SchemeListModel.fromJson(Map<String, dynamic> json) {
    return _$SchemeListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SchemeListModelToJson(this);
}
