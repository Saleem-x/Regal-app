import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pay/pay.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/views/payment/configs/androidpayment.dart';
import 'package:regal_app/feature/views/payment/configs/channels.dart';
import 'package:regal_app/feature/views/payment/paymentconfig.dart';
import 'package:regal_app/feature/views/payment/paymentfailedscreen.dart';
import 'package:regal_app/feature/views/payment/paymentsucces.dart';

import 'package:http/http.dart' as http;

class ConfirmPaymentTWO extends StatefulWidget {
  final SchemeDetailsModel schemeDetails;
  final CustomerSchemeModel scheme;
  final String orderID;
  final TextEditingController payablecontroller;
  final UserBaseModel user;
  const ConfirmPaymentTWO(
      {super.key,
      required this.schemeDetails,
      required this.scheme,
      required this.orderID,
      required this.payablecontroller,
      required this.user});

  @override
  State<ConfirmPaymentTWO> createState() => _ConfirmPaymentTWOState();
}

var gpaybutton = GooglePayButton(
  paymentConfiguration: PaymentConfiguration.fromJsonString(defaultGooglePay),
  paymentItems: _paymentItems,
  type: GooglePayButtonType.buy,
  margin: const EdgeInsets.only(top: 15.0),
  onPaymentResult: (result) {
    logger.e(result);
  },
  loadingIndicator: const Center(
    child: CircularProgressIndicator(),
  ),
);

class _ConfirmPaymentTWOState extends State<ConfirmPaymentTWO> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBFBFB),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
          ),
        ),
        title: Text(
          'Confirm Payment',
          style: TextStyle(
              // fontFamily: kboldfont,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Amount Payable',
              style: TextStyle(
                color: ktextgrey,
                fontSize: 17.sp,
              ),
            ),
            SizedBox(
              width: size.width,
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: widget.payablecontroller,
                style: TextStyle(
                    color: kcolorblack,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD1D1D1),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 208, 206, 206),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'PAYMENT OPTIONS',
              style: TextStyle(
                color: ktextgrey,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            GooglePayButton(
              paymentConfiguration: PaymentConfiguration.fromJsonString(custom),
              paymentItems: _paymentItems,
              type: GooglePayButtonType.pay,
              margin: const EdgeInsets.only(top: 15.0),
              onPaymentResult: (result) {
                logger.e('gpay result$result');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentSuccessScreen(
                      user: widget.user,
                    ),
                  ),
                );
              },
              onError: (error) {
                logger.e('gpay error$error');
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaymentFailedScreeen(
                              user: widget.user,
                            )));
              },
              loadingIndicator: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            InkWell(
              onTap: () async {
                final paymentChannel = PaymentChannel();
                paymentChannel.payWithGPay(
                    'https://pay.google.com/intl/en_us/about/how-it-works/',
                    'com.google.android.gms.wallet');

                paymentChannel.payWithGPay(
                    'https://pay.google.com/intl/en_us/about/how-it-works/',
                    'com.google.android.gms.wallet');
              },
              child: SizedBox(
                width: size.width,
                height: 30.h,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: kcolorwhite,
                      radius: 20,
                      child: Image.asset(
                        'assets/images/Google_Pay_Logo.svg.png',
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Google Pay',
                      style: TextStyle(
                        color: kcolorblack,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color(0xFFD1D1D1),
            ),
            InkWell(
              onTap: () async {
                launchGooglePayUPIIntent();
              },
              child: SizedBox(
                width: size.width,
                height: 30.h,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: kcolorwhite,
                      radius: 20,
                      child: Image.asset(
                        'assets/images/Paytm_Logo.jpg',
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      'Paytm',
                      style: TextStyle(
                        color: kcolorblack,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Color(0xFFD1D1D1),
            ),
          ],
        ),
      ),
    );
  }
}

const _paymentItems = [
  PaymentItem(
    label: 'Total',
    amount: '1000.99',
    status: PaymentItemStatus.final_price,
  ),
  PaymentItem(
    label: 'Total',
    amount: '1000.99',
    status: PaymentItemStatus.final_price,
  )
];

initpayment() async {
  var body = {
    'amount': '1000',
    'currency': "INR",
  };
  try {
    var response = await http.post(
        Uri.parse(
          'https://api.stripe.com/v1/payment_intents',
        ),
        headers: {
          "Authorization":
              "Bearer sk_test_51OEllJSAO1FOABEinUvrt3oQwY8Dh1QqLcDVVxa6zTPjV9gwgB3JthIesewsFQf0mjZQbsQGNP2Rzs5OtfKefoBw00Faf38K67",
          "Content-type": "application/x-www-form-urlencoded",
        },
        body: body);
    logger.e(response.body);
    final Map<String, dynamic> json = jsonDecode(response.body);
    String clntscrt = json['client_secret'];
    logger.e(clntscrt);

    return clntscrt;
  } catch (e) {
    logger.e(e);
  }
}
