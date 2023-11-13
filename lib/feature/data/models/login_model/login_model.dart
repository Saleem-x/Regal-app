import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  String? mob;
  String? pin;
  String? datakey;

  LoginModel({this.mob, this.pin, this.datakey});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return _$LoginModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
