import 'package:quantupi/quantupi.dart';
import 'package:http/http.dart' as http;
import 'package:regal_app/core/api/endpoints.dart';
import 'package:url_launcher/url_launcher.dart';

/* Future<String> */ initiateTransaction(
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
    appname: app, currency: "INR",
    // merchantId: merchatcode,
  );
  var response = await upi.startTransaction();
  if (response == QuantupiResponseError.nullresponse) {
    logger.e('resp e1');
  } else if (response == QuantupiResponseStatus.success) {
    logger.e('resp succes');
  } else {
    logger.e('resp $response');
  }
  // return response;
}

Future<void> launchGooglePayUPIIntent() async {
  String googlePayPackageName = "com.google.android.apps.nbu.paisa.user";

  String merchantVPA = "saleemsaly8-1@okhdfcbank";
  String merchantName = "Abdu Saleem";
  String merchantCode = "your-merchant-code";
  String transactionRefId = "1";
  String transactionNote = "testnote";
  String orderAmount = "1";
  String currency = "INR";
  // String transactionUrl = "https://example.com/transactions/12345";

  Uri uri = Uri(
    scheme: "upi",
    path: "pay",
    queryParameters: {
      "pa": merchantVPA,
      "pn": merchantName,
      "mc": merchantCode,
      "tr": transactionRefId,
      "tn": transactionNote,
      "am": orderAmount,
      "cu": currency,
      // "url": transactionUrl,
    },
  );

  String tempUrl = uri.toString();
  String urlg =
      "upi://pay?pa=saleemsaly8-1@okhdfcbank&pn=AbduSaleem&tr=15330175804633937&tn=Test_note%20deposit%2015330175804633937%20DH0490&am=1&cu=INR&mc=621";
  // "upi://pay?pa=saleemsaly8-1@okhdfcbank&pn=AbduSaleem&mc=your-merchant-code&tr=1&tn=test note&am=1&cu=inr&url=your-transaction-url";
  final testuri = Uri.parse(
      'gpay://upi/pay?pa=merchant%40pspbank&pn=MyNameHere&tr=15330175804633937&tn=Test%20deposit%2015330175804633937%20DH0490&am=5000&cu=INR&mc=621');
  try {
    if (await canLaunchUrl(
      testuri,
    )) {
      bool issuccess = await launchUrl(testuri,
          mode: LaunchMode.externalNonBrowserApplication,
          webViewConfiguration: WebViewConfiguration());

      logger.e('entha$issuccess');
    } else {
      // Handle if the URL can't be launched
      print('Cannot launch Google Pay UPI Intent');
    }
  } catch (e) {
    // Handle exceptions
    print('Error launching Google Pay UPI Intent: $e');
  }
}
