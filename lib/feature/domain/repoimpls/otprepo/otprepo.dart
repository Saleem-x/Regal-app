import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/generate_otp_model/generate_otp_model.dart';
import 'package:regal_app/feature/data/models/verify_otp_model/verify_otp_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IManageOTPRepo)
class OTPRepo implements IManageOTPRepo {
  @override
  Future<Either<MainFailures, GenerateOtpModel>> sendOtp(
      String mobileNo) async {
    try {
      final response = await http.post(Uri.parse(baseurl + sendotpurl),
          body: {"datakey": datakey, "MobileNo": mobileNo});
      if (response.statusCode == 200) {
        logger.e(response.body);
        final Map<String, dynamic> json = jsonDecode(response.body);

        final otpmodel = GenerateOtpModel.fromJson(json['result'][0]);

        // log(response.statusCode.toString());
        if (otpmodel.verStatus == '0') {
          return left(MainFailures.networkerror(error: otpmodel.otp!));
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
  Future<Either<MainFailures, VerifyOtpModel>> verifyOtP(
      String mobileNo, String otp) async {
    try {
      final response = await http.post(
        Uri.parse(baseurl + verifyotpurl),
        body: {"MobileNumber": mobileNo, "OTP": otp, "datakey": datakey},
      );
      if (response.statusCode == 200) {
        logger.e(response.body);
        logger.e(otp);

        final Map<String, dynamic> json = jsonDecode(response.body);

        final verifyOtpModel = VerifyOtpModel.fromJson(json['result'][0]);

        // log(response.statusCode.toString());

        if (verifyOtpModel.title == 'Failed') {
          return left(
              MainFailures.networkerror(error: verifyOtpModel.description!));
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
