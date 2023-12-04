import 'package:regal_app/core/api/endpoints.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchGooglePayUPIIntent() async {
  // String googlePayPackageName = "com.google.android.apps.nbu.paisa.user";

  /* String merchantVPA = "saleemsaly8-1@okhdfcbank";
  String merchantName = "Abdu Saleem";
  String merchantCode = "your-merchant-code";
  String transactionRefId = "1";
  String transactionNote = "testnote";
  String orderAmount = "1";
  String currency = "INR";
  // String transactionUrl = "https://example.com/transactions/12345";*/

  /* Uri uri = Uri(
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
  ); */

  // String tempUrl = uri.toString();
  // String urlg =
  //     "upi://pay?pa=saleemsaly8-1@okhdfcbank&pn=AbduSaleem&tr=15330175804633937&tn=Test_note%20deposit%2015330175804633937%20DH0490&am=1&cu=INR&mc=621";
  // "upi://pay?pa=saleemsaly8-1@okhdfcbank&pn=AbduSaleem&mc=your-merchant-code&tr=1&tn=test note&am=1&cu=inr&url=your-transaction-url";
  final testuri = Uri.parse(
      'upi://pay?pa=saleemsaly8-1@okhdfcbank&pn=AbduSaleem&tn=TestingGpay&am=1s&cu=INR');
  try {
    if (await canLaunchUrl(
      testuri,
    )) {
      bool issuccess = await launchUrl(
        testuri,
        mode: LaunchMode.externalNonBrowserApplication,
        webViewConfiguration: const WebViewConfiguration(),
      );

      logger.e('entha$issuccess');
    } else {
      logger.e('Cannot launch Google Pay UPI Intent');
    }
  } catch (e) {
    logger.e('Error launching Google Pay UPI Intent: $e');
  }
}
