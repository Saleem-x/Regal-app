import 'package:json_annotation/json_annotation.dart';

part 'branch_model.g.dart';

@JsonSerializable()
class BranchModel {
  @JsonKey(name: 'BranchName')
  String? branchName;
  @JsonKey(name: 'BranchId')
  int? branchId;

  BranchModel({this.branchName, this.branchId});

  factory BranchModel.fromJson(Map<String, dynamic> json) {
    return _$BranchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BranchModelToJson(this);
}
