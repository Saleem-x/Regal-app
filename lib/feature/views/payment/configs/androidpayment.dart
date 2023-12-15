// import 'dart:io';

import 'package:flutter/services.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:paytm_allinonesdk/paytm_allinonesdk.dart';
import 'package:android_intent_plus/android_intent.dart';
// import 'package:android_intent_plus/flag.dart';

Future<bool> launchGooglePayUPIIntent(
    String upiID, String merchentCode, String orderID) async {
  // String googlePayPackageName = "com.google.android.apps.nbu.paisa.user";
  String callbackurl = baseurl + paymentcallbackurl;

  try {
    if (await canLaunchUrl(
      Uri.parse(
          "gpay://upi/pay?pa=$upiID&pn=Regal Jewellers&tr=$orderID&tn=Test payment&am=1&cu=INR&mc=$merchentCode&url=$callbackurl"),
    )) {
      bool issuccess = await launchUrl(
        Uri.parse(
            "gpay://upi/pay?pa=$upiID&pn=Regal Jewellers&tr=$orderID&tn=Test payment&am=1&cu=INR&mc=$merchentCode&url=$callbackurl"),
        mode: LaunchMode.externalApplication,
      );

      logger.e('entha$issuccess');
      return issuccess;
    } else {
      logger.e('Cannot launch Google Pay UPI Intent');
      return false;
    }
  } catch (e) {
    logger.e('Error launching Google Pay UPI Intent: $e');

    return false;
  }
}

checkresult() async {
  try {
    final response = await http.post(
      Uri.parse(baseurl + paymentcallbackurl),
    );

    logger.e('response ${response.body}');
  } catch (e) {
    logger.e('checked error$e');
  }
}

paytmsdkpackage(String upiID, String merchentCode, String orderID) async {
  var result = '';
  String callbackurl = baseurl + paymentcallbackurl;
  var response = AllInOneSdk.startTransaction(
      merchentCode, orderID, "1", orderID, callbackurl, true, false);
  response.then((value) {
    print('ithaan$value');

    result = value.toString();
  }).catchError((onError) {
    if (onError is PlatformException) {
      result = "${onError.message} \n  ${onError.details} / ${onError.code}";

      logger.e('error pl $result');
    } else {
      result = onError.toString();

      logger.e('error other$result.c');
    }
  });

  logger.e(result);
}

paytmtxntoken(String upiID, String merchentCode, String orderID) async {
  try {
    final response = await http.post(
      Uri.parse(
          'https://securegw.paytm.in/theia/api/v1/initiateTransaction?mid=$merchentCode&orderId=$orderID'),
    );

    logger.e('response ${response.body}');
  } catch (e) {
    logger.e('checked error$e');
  }
}

intenting(String upiID, String merchantCode, String orderID) async {
  String callbackurl = baseurl + paymentcallbackurl;
  AndroidIntent intent = AndroidIntent(
      action: 'action_view',
      package: 'com.google.android.apps.nbu.paisa.user',
      data:
          "gpay://upi/pay?pa=saleemsaly8-1@okhdfcbank&pn=Regal Jewellers&tr=$orderID&tn=Test payment&am=1&cu=INR&mc=$merchantCode&url=$callbackurl"
      // data:
      //     "upi://pay?pa=$upiID&pn=Regal Jewellers&mc=$merchantCode&tr=$orderID&tn=test note&am=1&cu=inr&url=$callbackurl",
      );

  try {
    await intent.launch();

    // intent.
  } catch (e) {
    logger.e('Error launching intent: $e');
  }
}

paytmapiintent(String upiID, String merchentCode, String orderID) async {
  String callbackurl = baseurl + paymentcallbackurl;
  AndroidIntent intent = AndroidIntent(
    action: 'action_view',
    package: 'net.one97.paytm',
    data:
        "upi://pay?pa=$upiID&pn=Regal Jewellers&tr=$orderID&tn=Test payment&am=1&cu=INR&mc=$merchentCode&url=$callbackurl",
  );
  try {
    await intent.launch();

    // intent.
  } catch (e) {
    logger.e('Error launching intent: $e');
  }
}
