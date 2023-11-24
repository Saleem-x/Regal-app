 import 'package:quantupi/quantupi.dart';

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