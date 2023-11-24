import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quantupi/quantupi.dart';
import 'package:regal_app/core/failures/failures.dart';
import 'package:regal_app/feature/data/repos/abstractrepos.dart';

@LazySingleton(as: IPayMentRepo)
class PayMentRepo implements IPayMentRepo {
  @override
  Future<Either<MainFailures, String>> initiatepyament(
    String upiId,
    String orderID,
    String merchatcode, {
    QuantUPIPaymentApps? app,
  }) async {
    try {
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
      // logger.e(' payment ithan response $response');
      return right(response);
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
