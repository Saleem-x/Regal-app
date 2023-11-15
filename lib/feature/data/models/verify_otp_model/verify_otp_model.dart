import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_model.g.dart';

@JsonSerializable()
class VerifyOtpModel {
  @JsonKey(name: 'Res')
  String? res;
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Description')
  String? description;

  VerifyOtpModel({this.res, this.title, this.description});

  factory VerifyOtpModel.fromJson(Map<String, dynamic> json) {
    return _$VerifyOtpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyOtpModelToJson(this);
}
