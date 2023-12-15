import 'package:json_annotation/json_annotation.dart';

part 'sales_man_model.g.dart';

@JsonSerializable()
class SalesManModel {
  @JsonKey(name: 'EmpName')
  String? empName;
  @JsonKey(name: 'EmpId')
  String? empId;
  @JsonKey(name: 'EmpCode')
  String? empCode;

  SalesManModel({this.empName, this.empId, this.empCode});

  factory SalesManModel.fromJson(Map<String, dynamic> json) {
    return _$SalesManModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalesManModelToJson(this);
}
