import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pay/pay.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/views/payment/paymentconfig.dart';
import 'package:regal_app/feature/views/payment/paymentfailedscreen.dart';

class ConfirmPaymentTWO extends StatefulWidget {
  const ConfirmPaymentTWO({super.key});

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
                // controller: _payablecontroller,
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
            // GooglePayButton(
            //   onPressed: () {},
            //   paymentConfiguration:
            //       PaymentConfiguration.fromJsonString(defaultGooglePay),
            //   paymentItems: _paymentItems,
            //   type: GooglePayButtonType.pay,
            //   margin: const EdgeInsets.only(top: 15.0),
            //   onPaymentResult: (result) {
            //     logger.e(result);
            //   },
            //   loadingIndicator: const Center(
            //     child: CircularProgressIndicator(),
            //   ),
            // ),
            GestureDetector(
              onTap: () async {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const PaymentSuccessScreen(),
                //     ));

                // await initpaymentsheet
              },
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
            const Divider(
              color: Color(0xFFD1D1D1),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentFailedScreeen(),
                    ));
              },
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
            const Divider(
              color: Color(0xFFD1D1D1),
            ),
          ],
        ),
      ),
    );
  }

 /*  initpaymentsheet() async {
    var paymentintet = await getintent();
    // Stripe.publishableKey =
    //     "pk_test_51OEllJSAO1FOABEim1fCjNzBIEcCyVE8ktxDDAppc6ioFeHwJnAyvbJ0kOfuneeV0TjanNYjjalEEU2LvCdMqTqs00Z52WID0G";
    // await Stripe.instance.applySettings();
    var gpay = const PaymentSheetGooglePay(
        merchantCountryCode: 'USD',
        currencyCode: 'USD',
        testEnv: true,
        amount: '1');

    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentintet,
        style: ThemeMode.light,
        merchantDisplayName: 'saleem',
        googlePay: gpay,
      ),
    );
    displaysheet();
  } */
}

/* displaysheet() async {
  await Stripe.instance.presentPaymentSheet();
} */

const _paymentItems = [
  PaymentItem(
    label: 'Total',
    amount: '99.99',
    status: PaymentItemStatus.final_price,
  ),
  PaymentItem(
    label: 'Total',
    amount: '88.99',
    status: PaymentItemStatus.final_price,
  )
];



