import 'package:json_annotation/json_annotation.dart';

part 'pin_reset_otp_model.g.dart';

@JsonSerializable()
class PinResetOtpModel {
  @JsonKey(name: 'cusID')
  String? cusId;
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Descr')
  String? descr;

  PinResetOtpModel({this.cusId, this.title, this.descr});

  factory PinResetOtpModel.fromJson(Map<String, dynamic> json) {
    return _$PinResetOtpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PinResetOtpModelToJson(this);
}
