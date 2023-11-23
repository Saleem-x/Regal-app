import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/payment_hystory_in_model/payment_hystory_in_model.dart';
import 'package:regal_app/feature/data/models/payment_hystoryout_model/payment_hystoryout_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:http/http.dart' as http;

class PaymentHystoryRepo implements IPaymentHystoryRepo {
  @override
  Future<Either<MainFailures, PaymentHystoryoutModel>> getpaymenthystory(
      PaymentHystoryInModel userpaymentmodel) async {
    try {
      final response = await http.post(Uri.parse(baseurl + paymenthystoryurl),
          body: userpaymentmodel.toJson());
      if (response.statusCode == 200) {
        logger.e(response.body);
        final Map<String, dynamic> json = jsonDecode(response.body);

        final paymenthystory =
            PaymentHystoryoutModel.fromJson(json['result'][0]);

        return right(paymenthystory);
      } else {
        logger.e(response.statusCode.toString());
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
