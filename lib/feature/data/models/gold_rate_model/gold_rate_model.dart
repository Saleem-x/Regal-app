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

  GoldRateModel({
    this.boardRate,
    this.weight,
    this.entryDate,
    this.entryTime,
    this.totalPrice,
  });

  factory GoldRateModel.fromJson(Map<String, dynamic> json) {
    return _$GoldRateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GoldRateModelToJson(this);
}
