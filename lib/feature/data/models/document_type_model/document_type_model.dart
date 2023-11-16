import 'package:json_annotation/json_annotation.dart';

part 'document_type_model.g.dart';

@JsonSerializable()
class DocumentTypeModel {
  @JsonKey(name: 'DocId')
  String? docId;
  @JsonKey(name: 'DocType')
  String? docType;

  DocumentTypeModel({this.docId, this.docType});

  factory DocumentTypeModel.fromJson(Map<String, dynamic> json) {
    return _$DocumentTypeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DocumentTypeModelToJson(this);
}
