import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/models/payment_status_update_model/payment_status_update_model.dart';
import 'package:regal_app/feature/data/models/payment_status_update_resp_model/payment_status_update_resp_model.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IPaymentStatusUpdateRepo)
class PaymentStatusRepo implements IPaymentStatusUpdateRepo {
  @override
  Future<Either<MainFailures, PaymentStatusUpdateRespModel>>
      updatepaymentstatus(PaymentStatusUpdateModel paymentstatusresps) async {
    try {
      final response =
          await http.post(Uri.parse(baseurl + updatepaymentstatusurl), body: {
        "datakey": datakey,
        "cusID": paymentstatusresps.cusId,
        "goldRate": paymentstatusresps.goldRate,
        "amt": paymentstatusresps.amt,
        "payableAmt": paymentstatusresps.payableAmt,
        "wgt": paymentstatusresps.wgt,
        "joinID": paymentstatusresps.joinId,
        "schemeID": paymentstatusresps.schemeId,
        "response": paymentstatusresps.response,
        "orderID": paymentstatusresps.orderId,
        "subCode": paymentstatusresps.subCode
      });

      logger.e({
        "datakey": datakey,
        "cusID": paymentstatusresps.cusId,
        "goldRate": paymentstatusresps.goldRate,
        "amt": paymentstatusresps.amt,
        "payableAmt": paymentstatusresps.payableAmt,
        "wgt": paymentstatusresps.wgt,
        "joinID": paymentstatusresps.joinId,
        "schemeID": paymentstatusresps.schemeId,
        "response": paymentstatusresps.response,
        "orderID": paymentstatusresps.orderId,
        "subCode": paymentstatusresps.subCode
      });
      if (response.statusCode == 200) {
        log(response.body);
        final Map<String, dynamic> json = jsonDecode(response.body);

        if (response.body.contains('NoData')) {
          return left(
              const MainFailures.networkerror(error: 'Something Went Wrong'));
        }
        final responsestatus =
            PaymentStatusUpdateRespModel.fromJson(json['result'][0]);
        return right(responsestatus);
      } else {
        logger.e(response.statusCode.toString());
        return left(const MainFailures.clientfailure());
      }
    } catch (e) {
      logger.e('error aan update $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
