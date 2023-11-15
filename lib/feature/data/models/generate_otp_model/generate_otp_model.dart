import 'package:json_annotation/json_annotation.dart';

part 'generate_otp_model.g.dart';

@JsonSerializable()
class GenerateOtpModel {
  @JsonKey(name: 'VerStatus')
  String? verStatus;
  @JsonKey(name: 'otp')
  String? otp;

  GenerateOtpModel({this.verStatus, this.otp});

  factory GenerateOtpModel.fromJson(Map<String, dynamic> json) {
    return _$GenerateOtpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GenerateOtpModelToJson(this);
}
