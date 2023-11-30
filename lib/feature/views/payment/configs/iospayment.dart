import 'package:quantupi/quantupi.dart';
import 'package:http/http.dart' as http;
import 'package:regal_app/core/api/endpoints.dart';

QuantUPIPaymentApps appoptiontoenum(String appname) {
  switch (appname) {
    case 'Amazon Pay':
      return QuantUPIPaymentApps.amazonpay;
    case 'BHIMUPI':
      return QuantUPIPaymentApps.bhimupi;
    case 'Google Pay':
      return QuantUPIPaymentApps.googlepay;
    case 'Mi Pay':
      return QuantUPIPaymentApps.mipay;
    case 'Mobikwik':
      return QuantUPIPaymentApps.mobikwik;
    case 'Airtel Thanks':
      return QuantUPIPaymentApps.myairtelupi;
    case 'Paytm':
      return QuantUPIPaymentApps.paytm;

    case 'PhonePe':
      return QuantUPIPaymentApps.phonepe;
    case 'SBI PAY':
      return QuantUPIPaymentApps.sbiupi;
    default:
      return QuantUPIPaymentApps.googlepay;
  }
}

const List<String> paymentappoptions = [
  'Amazon Pay',
  'BHIMUPI',
  'Google Pay',
  'Mi Pay',
  'Mobikwik',
  'Airtel Thanks',
  'Paytm',
  'PhonePe',
  'SBI PAY',
];

//  String uri = 'gpay://pay'
//       '?pa="saleemsaly8-1@okhdfcbank"
//       '&pn=${Uri.encodeComponent('saleem')}'
//       '&tr=$transactionRef'
//       '&tn=${Uri.encodeComponent(transactionNote!)}'
//       '&am=${amount.toString()}'
//       '&cu=$currency';


gpayapi() async {
  final response = await http.post(Uri.parse(
      "gpay://?pa=paysaleemsaly8-1@okhdfcbank&pn=saleem&tr=1&am=1&cuINR"));

  logger.e(response.body);
}

