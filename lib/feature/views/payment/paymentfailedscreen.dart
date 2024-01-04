import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/bloc/instalmenthystory/instalmenthystory_bloc.dart';
import 'package:regal_app/feature/state/bloc/paymentresponse/paymentresponse_bloc.dart';
import 'package:regal_app/feature/views/auth/loginscreen.dart';
import 'package:regal_app/feature/views/home/homescreen.dart';
import 'package:regal_app/feature/views/payment/confirmpaymentw2.dart';

class PaymentFailedScreeen extends StatelessWidget {
  final UserBaseModel user;
  final String amount;
  final SchemeDetailsModel schemeDetails;
  final CustomerSchemeModel scheme;
  final bool? isNewScheme;
  const PaymentFailedScreeen(
      {super.key,
      required this.user,
      required this.amount,
      required this.schemeDetails,
      required this.scheme,
      this.isNewScheme});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    context.read<PaymentresponseBloc>().add(
          const ResetresponseEvent(),
        );
    return Scaffold(
      backgroundColor: kcolorwhite,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: SizedBox(
              // height: size.height / 2.8,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    // height: 80.h,
                    // width: 60.w,
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/svg/alert.svg',
                        fit: BoxFit.cover,
                        height: 90.h,
                        width: 80.w,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Oh no,your\npayment failed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kcolorblack,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Amount',
                      style: TextStyle(
                          color: kcolorblack,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '₹$amount',
                      style: TextStyle(
                          color: kcolorblack,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    'Any amount is debited from your bank account will\n be refunded back in 2 to 7 business Days',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kcolorblack,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFf6f6f6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(
                    30,
                  ),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Payment for',
                              style: TextStyle(
                                color: ktextgrey,
                                // fontFamily: kprimaryfont,
                              ),
                            )
                          ],
                        ),
                        // SizedBox(
                        //   height: 10.h,
                        // ),
                        Row(
                          children: [
                            Container(
                              width: 35.h,
                              height: 35.h,
                              decoration: const BoxDecoration(
                                // borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/miscellaneous.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                /* boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(-1, 3),
                              ),
                            ] */
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 60.h,
                                width: size.width.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${scheme.schemeNo}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    Text(
                                      '${scheme.schemeName}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Divider(
                        color: klightgrey.withOpacity(.3),
                        thickness: 2,
                      ),
                    ),
                    Text(
                      "Don't Worry.\n You can try again with Other Payment Options",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: ktextgrey.withOpacity(.7),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                context
                                    .read<InstalmenthystoryBloc>()
                                    .add(const ResetDataEvent());

                                if (isNewScheme == true) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen(),
                                      ),
                                      (route) => false);
                                } else {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(
                                        user: user,
                                      ),
                                    ),
                                    (route) => false,
                                  );
                                }
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ConfirmPaymentTWO(
                                      scheme: scheme,
                                      goldWeight: '',
                                      isNewScheme: isNewScheme,
                                      orderID:
                                          generateOrderID("login", user.cusId!),
                                      payablecontroller:
                                          TextEditingController(text: amount),
                                      schemeDetails: schemeDetails,
                                      user: user,
                                    ),
                                  ),
                                );
                              },
                              icon: /* Icon(
                                Icons.history,
                                size: 30.sp,
                              ) */
                                  SvgPicture.asset(
                                'assets/others/history.svg',
                                height: 18.h,
                                width: 18.w,
                              ),
                            ),
                            Text(
                              'Try Again',
                              style: TextStyle(
                                  color: ktextgrey.withOpacity(.5),
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                if (isNewScheme != null &&
                                    isNewScheme == true) {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginScreen(),
                                    ),
                                    (route) => false,
                                  );
                                } else {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          HomeScreen(user: user),
                                    ),
                                    (route) => false,
                                  );
                                }
                              },
                              icon: Icon(
                                CupertinoIcons.forward,
                                size: 30.sp,
                              ),
                            ),
                            Text(
                              'Back to Home',
                              style: TextStyle(
                                  color: ktextgrey.withOpacity(.5),
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String generateOrderID(String intentFlag, String cusID) {
    int cusID1 = 0;
    String orderID;

    if (intentFlag == 'SIGNUP') {
      cusID1 = int.parse(cusID);
      orderID = '$cusID1' '1'.toString();
    } else {
      cusID1 = int.parse(user.cusId!);
      int seq =
          user.orderSeq ?? DateTime.now().microsecondsSinceEpoch + 1.toInt();
      orderID = '$cusID1$seq'.toString();
      user.orderSeq = seq;
    }

    DateTime currentDateAndTime = DateTime.now();
    int timeStamp = currentDateAndTime.microsecondsSinceEpoch;

    orderID = '$cusID1$timeStamp';

    return orderID;
  }
}
