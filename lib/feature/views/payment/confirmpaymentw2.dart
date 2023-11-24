import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pay/pay.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/state/bloc/bloc/payment_bloc.dart';
import 'package:regal_app/feature/views/payment/configs/androidpayment.dart';
import 'package:regal_app/feature/views/payment/configs/iospayment.dart';
import 'package:regal_app/feature/views/payment/paymentconfig.dart';
import 'package:regal_app/feature/views/payment/paymentfailedscreen.dart';
import 'package:regal_app/feature/views/payment/paymentsucces.dart';

class ConfirmPaymentTWO extends StatefulWidget {
  final SchemeDetailsModel schemeDetails;
  final CustomerSchemeModel scheme;
  final String orderID;
  final TextEditingController payablecontroller;
  const ConfirmPaymentTWO(
      {super.key,
      required this.schemeDetails,
      required this.scheme,
      required this.orderID,
      required this.payablecontroller});

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
              paymentConfiguration:
                  PaymentConfiguration.fromJsonString(defaultGooglePay),
              paymentItems: _paymentItems,
              type: GooglePayButtonType.pay,
              margin: const EdgeInsets.only(top: 15.0),
              onPaymentResult: (result) {
                logger.e('gpay result$result');
              },
              loadingIndicator: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
            GestureDetector(
              onTap: () async {
                try {
                  final data = await initiateTransaction(
                    widget.scheme.subId!,
                    widget.orderID,
                    widget.scheme.merchantCode!,
                    app: appoptiontoenum('Google Pay'),
                  );
                  if (data == 'user_canceled' || data.isEmpty) {
                    logger.e('payment status failed 2 $data');
                  } else {
                    logger.e('payment status success $data');
                    // ignore: use_build_context_synchronously
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentSuccessScreen(),
                      ),
                    );
                  }
                } catch (e) {
                  logger.e('Error during transaction: $e');

                  // ignore: use_build_context_synchronously
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentFailedScreeen(),
                    ),
                  );
                }

                // context.read<PaymentBloc>().add(
                //       InitiatePaymentEvent(
                //         upiId: widget.scheme.subId!,
                //         orderID: widget.orderID,
                //         merchatcode: widget.scheme.merchantCode!,
                //         app: appoptiontoenum('Google Pay'),
                //       ),
                //     );
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
              onTap: () async {
                final data = await initiateTransaction(
                  widget.scheme.subId!,
                  widget.scheme.merchantCode!,
                  '',
                  app: appoptiontoenum('Paytm'),
                );

                if (data == 'user_canceled') {
                  logger.e('payment status failed 2 $data');
                } else {
                  logger.e('payment status success $data');
                }

                // context.read<PaymentBloc>().add(
                //       InitiatePaymentEvent(
                //         upiId: widget.scheme.subId!,
                //         orderID: widget.orderID,
                //         merchatcode: widget.scheme.merchantCode!,
                //         app: appoptiontoenum('Paytm'),
                //       ),
                //     );
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
}

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
