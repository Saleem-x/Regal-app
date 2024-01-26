import 'package:json_annotation/json_annotation.dart';

part 'gold_rate_model.g.dart';

@JsonSerializable()
class GoldRateModel {
  @JsonKey(name: 'BoardRate')
  String? boardRate;
  String? weight;
  @JsonKey(name: 'EntryDate')
  String? entryDate;
  @JsonKey(name: 'EntryTime')
  String? entryTime;
  @JsonKey(name: 'TotalPrice')
  String? totalPrice;
  @JsonKey(name: 'Branch_id')
  int? branchId;
  @JsonKey(name: 'BranchName')
  String? branchName;
  @JsonKey(name: 'BranchCode')
  String? branchCode;

  GoldRateModel({
    this.boardRate,
    this.weight,
    this.entryDate,
    this.entryTime,
    this.totalPrice,
    this.branchId,
    this.branchName,
    this.branchCode,
  });

  factory GoldRateModel.fromJson(Map<String, dynamic> json) {
    return _$GoldRateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GoldRateModelToJson(this);
}
