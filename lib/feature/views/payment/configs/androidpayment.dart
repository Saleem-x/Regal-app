import 'package:quantupi/quantupi.dart';
import 'package:regal_app/core/api/endpoints.dart';

Future<String> initiateTransaction(
  String upiId,
  String orderID,
  String merchatcode, {
  QuantUPIPaymentApps? app,
}) async {
  Quantupi upi = Quantupi(
    receiverUpiId: /* upiId */ 'saleemsaly8-1@okhdfcbank',
    receiverName: 'Regal Jewellers',
    // transactionRefId: orderID,
    transactionNote: 'Regal Schemes',
    amount: 1.0,
    appname: app,
    // merchantId: merchatcode,
  );
  String response = await upi.startTransaction();
  logger.e(' payment ithan response $response');
  return response;
}


