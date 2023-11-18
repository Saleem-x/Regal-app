import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/pin_reset_otp_model/pin_reset_otp_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IResetPinRepo)
class ResetPinRepo implements IResetPinRepo {
  @override
  Future<Either<MainFailures, PinResetOtpModel>> sendOtp(
      String mobileNo) async {
    try {
      final response = await http.post(Uri.parse(baseurl + resetpinotpurl),
          body: {"datakey": datakey, "mob": mobileNo});
      if (response.statusCode == 200) {
        logger.e(response.body + mobileNo);
        final Map<String, dynamic> json = jsonDecode(response.body);

        final otpmodel = PinResetOtpModel.fromJson(json['result'][0]);
        if (otpmodel.cusId == '0') {
          return left(MainFailures.networkerror(
              error: otpmodel.title! + otpmodel.descr!));
        }

        return right(otpmodel);
      } else {
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, PinResetOtpModel>> verifyOtP(
      String cusId, String otp) async {
    try {
      final response = await http.post(
        Uri.parse(baseurl + resetpinotpverifyurl),
        body: {"cusID": cusId, "otp": otp, "datakey": datakey},
      );
      if (response.statusCode == 200) {
        logger.e(response.body);
        logger.e(cusId);

        final Map<String, dynamic> json = jsonDecode(response.body);

        final verifyOtpModel = PinResetOtpModel.fromJson(json['result'][0]);

        // log(response.statusCode.toString());

        if (json['result'][0]['Res'] == '0') {
          logger.i('entho sampavichu${response.body}');
          return left(MainFailures.networkerror(
              error: json['result'][0]['Title'] +
                  ' ' +
                  json['result'][0]['Description']));
        } else if (json['result'][0]['cusID'] == '0') {
          logger.i('entho sampavichu2${response.body}');
          return left(MainFailures.networkerror(
              error: verifyOtpModel.title! + verifyOtpModel.descr!));
        } else {
          logger.e('ithaaan adutha adhyaayam ${response.body}');
        }

        return right(verifyOtpModel);
      } else {
        logger.e(response.body);
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      logger.e(e);
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, PinResetOtpModel>> resetPin(
      String cusId, String pin) async {
    try {
      final response = await http.post(
        Uri.parse(baseurl + resetpinurl),
        body: {"cusID": cusId, "pin": pin, "datakey": datakey},
      );
      if (response.statusCode == 200) {
        logger.e(response.body);
        logger.e(cusId);

        final Map<String, dynamic> json = jsonDecode(response.body);

        final verifyOtpModel = PinResetOtpModel.fromJson(json['result'][0]);

        // log(response.statusCode.toString());

        if (json['result'][0]['Title'] != 'Success') {
          logger.i('entho sampavichu${response.body}');
          return left(MainFailures.networkerror(
              error: json['result'][0]['Title'] +
                  ' ' +
                  json['result'][0]['Description']));
        } else if (json['result'][0]['cusID'] == '0') {
          return left(MainFailures.networkerror(
              error: verifyOtpModel.title! + verifyOtpModel.descr!));
        }

        return right(verifyOtpModel);
      } else {
        logger.e(response.body);
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      logger.e(e);
      return left(const MainFailures.serverfailure());
    }
  }
}
