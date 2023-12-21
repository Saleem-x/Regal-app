import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/payment_resp_model/payment_resp_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/bloc/instalmenthystory/instalmenthystory_bloc.dart';
import 'package:regal_app/feature/state/bloc/paymentresponse/paymentresponse_bloc.dart';
import 'package:regal_app/feature/views/auth/loginscreen.dart';
import 'package:regal_app/feature/views/home/homescreen.dart';
import 'package:regal_app/feature/views/viewdetails/viewdetailscreen.dart';
import 'package:intl/intl.dart';

class PaymentSuccessScreen extends StatelessWidget {
  final UserBaseModel user;
  final PaymentRespModel paymentRespM;
  final String amount;
  final SchemeDetailsModel schemeDetails;
  final CustomerSchemeModel scheme;
  final bool? isNewScheme;
  const PaymentSuccessScreen(
      {super.key,
      required this.user,
      required this.paymentRespM,
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
      backgroundColor: const Color.fromARGB(255, 225, 162, 66),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 225, 162, 66),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.share,
              color: kcolorwhite,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 2.8,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    // height: 80.h,
                    // width: 60.w,
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/svg/tick.svg',
                        fit: BoxFit.cover,
                        height: 90.h,
                        width: 80.w,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Amount',
                      style: TextStyle(
                        // fontFamily: kprimaryfont,
                        color: kcolorwhite.withOpacity(.9),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '₹$amount',
                      style: TextStyle(
                          // fontFamily: kprimaryfont,
                          color: kcolorwhite.withOpacity(.9),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    'Paid Successfully',
                    style: TextStyle(
                        // fontFamily: kprimaryfont,
                        color: kcolorwhite.withOpacity(.9),
                        fontSize: 15.sp),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: kcolorwhite,
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
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Reciept',
                              style: TextStyle(
                                color: ktextgrey,
                                // fontFamily: kprimaryfont,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
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
                                      "${scheme.schemeNo}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    Text(
                                      "${scheme.schemeName}",
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Trans.No: ${paymentRespM.txnRef}',
                                style: const TextStyle(
                                  color: ktextgrey,
                                ),
                              ),
                              Text(
                                DateFormat('dd/MM/yyyy').format(DateTime.now()),
                                style: const TextStyle(
                                  color: ktextgrey,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Divider(
                            color: ktextgrey.withOpacity(.3),
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Weight:0.02 gm(s)',
                                    style: TextStyle(
                                        color: ktextgrey, fontSize: 12.sp),
                                  ),
                                  Text(
                                    'Gold Rate: ₹${schemeDetails.goldRate}',
                                    style: TextStyle(
                                        color: ktextgrey, fontSize: 12.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Total Wt:${schemeDetails.goldWeight} gm(s)',
                                style: TextStyle(
                                    color: ktextgrey, fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: 25.h,
                        // ),
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
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(
                                            user: user,
                                          ),
                                        ),
                                        (route) => false);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ViewDetailScreen(
                                          scheme: scheme,
                                          schemedetil: schemeDetails,
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
                                  'View History',
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
                                          builder: (context) =>
                                              const LoginScreen(),
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
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
