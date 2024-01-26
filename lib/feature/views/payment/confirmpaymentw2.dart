import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/payment_resp_model/payment_resp_model.dart';
import 'package:regal_app/feature/data/models/payment_status_update_model/payment_status_update_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/bloc/paymentresponse/paymentresponse_bloc.dart';
import 'package:regal_app/feature/state/bloc/paymentstatusupdate/updatepaymentstatus_bloc.dart';
import 'package:regal_app/feature/views/auth/loginscreen.dart';
import 'package:regal_app/feature/views/home/homescreen.dart';
import 'package:regal_app/feature/views/payment/paymentfailedscreen.dart';
import 'package:regal_app/feature/views/payment/paymentsucces.dart';

// ignore: prefer_typing_uninitialized_variables
var trxtfinal;

class ConfirmPaymentTWO extends StatefulWidget {
  final SchemeDetailsModel schemeDetails;
  final CustomerSchemeModel scheme;
  final String orderID;
  final TextEditingController payablecontroller;
  final UserBaseModel user;
  final bool? isNewScheme;
  final String goldWeight;
  const ConfirmPaymentTWO(
      {super.key,
      required this.schemeDetails,
      required this.scheme,
      required this.orderID,
      required this.payablecontroller,
      required this.user,
      this.isNewScheme,
      required this.goldWeight});

  @override
  State<ConfirmPaymentTWO> createState() => _ConfirmPaymentTWOState();
}

String deeplink = '';

bool canPop = true;

class _ConfirmPaymentTWOState extends State<ConfirmPaymentTWO> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    logger.e('isnew schem ${widget.isNewScheme}');
    return PopScope(
      canPop: canPop,
      child: Scaffold(
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
        body: BlocConsumer<UpdatepaymentstatusBloc, UpdatepaymentstatusState>(
          listener: (context, state) {
            logger.e(state);
            state.when(paymentstatusUpdateState: (status, gpayresp) {
              canPop = true;
              Navigator.pop(context);

              if (widget.isNewScheme == null || widget.isNewScheme != true) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(
                        user: widget.user,
                      ),
                    ),
                    (route) => false);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentSuccessScreen(
                        user: widget.user,
                        paymentRespM: gpayresp!,
                        amount: widget.payablecontroller.text,
                        scheme: widget.scheme,
                        schemeDetails: widget.schemeDetails,
                        isNewScheme: widget.isNewScheme,
                        goldWeight: widget.goldWeight,
                      ),
                    ));
              } else {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(
                          // user: widget.user,
                          ),
                    ),
                    (route) => false);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentSuccessScreen(
                      user: widget.user,
                      paymentRespM: gpayresp!,
                      amount: widget.payablecontroller.text,
                      scheme: widget.scheme,
                      schemeDetails: widget.schemeDetails,
                      isNewScheme: widget.isNewScheme,
                      goldWeight: widget.goldWeight,
                    ),
                  ),
                );
              }

              /*  Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => PaymentSuccessScreen(
                      user: widget.user,
                      paymentRespM: gpayresp!,
                      amount: widget.payablecontroller.text,
                      scheme: widget.scheme,
                      schemeDetails: widget.schemeDetails,
                      isNewScheme: widget.isNewScheme,
                      goldWeight: widget.goldWeight,
                    ),
                  ),
                  (route) => false); */
            }, paymentstatusUpdateFailedState: (error) {
              /*  Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => PaymentFailedScreeen(
                      user: widget.user,
                      amount: widget.payablecontroller.text,
                      scheme: widget.scheme,
                      schemeDetails: widget.schemeDetails,
                      isNewScheme: widget.isNewScheme,
                    ),
                  ),
                  (route) => false); */

              if (widget.isNewScheme == null || widget.isNewScheme != true) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(
                        user: widget.user,
                      ),
                    ),
                    (route) => false);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentFailedScreeen(
                        user: widget.user,
                        amount: widget.payablecontroller.text,
                        scheme: widget.scheme,
                        schemeDetails: widget.schemeDetails,
                        isNewScheme: widget.isNewScheme,
                      ),
                    ));
              } else {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(
                          // user: widget.user,
                          ),
                    ),
                    (route) => false);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentFailedScreeen(
                      user: widget.user,
                      amount: widget.payablecontroller.text,
                      scheme: widget.scheme,
                      schemeDetails: widget.schemeDetails,
                      isNewScheme: widget.isNewScheme,
                    ),
                  ),
                );
              }
              /* showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: const Text('Alert'),
                    content: Text(
                      error,
                    ),
                    actions: <Widget>[
                      /*  CupertinoDialogAction(
                          child: const Text("Cancel"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ), */
                      CupertinoDialogAction(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              ); */
            });
          },
          builder: (context, state) {
            return BlocConsumer<PaymentresponseBloc, PaymentresponseState>(
              listener: (context, state) {
                state.when(
                    havepaymentResponseState: (response) async {
                      logger.e("ithaan bloc response $response");
                      if (response != null) {
                        /*  await showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('alert'),
                          content: Text(response),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("ok"),
                            ),
                          ],
                        ),
                      ); */

                        List<String> keyValuePairs = response.split("&");
                        Map<String, String> responseMap = {};
                        for (String pair in keyValuePairs) {
                          List<String> parts = pair.split("=");
                          if (parts.length == 2) {
                            responseMap[parts[0]] = parts[1];
                          }
                        }
                        String jsonResponse = '''{
                        "txnId": "${responseMap['txnId'] ?? ''}",
                        "responseCode": "${responseMap['responseCode'] ?? ''}",
                        "Status": "${responseMap['Status'] ?? ''}",
                        "txnRef": "${responseMap['txnRef'] ?? ''}"
                         }
                          ''';
                        PaymentRespModel respModel =
                            PaymentRespModel.fromJson(jsonDecode(jsonResponse));

                        if (response == "transaction failed || null") {
                          /* Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => PaymentFailedScreeen(
                                  user: widget.user,
                                  amount: widget.payablecontroller.text,
                                  scheme: widget.scheme,
                                  schemeDetails: widget.schemeDetails,
                                  isNewScheme: widget.isNewScheme,
                                ),
                              ),
                              (route) => false); */

                          if (widget.isNewScheme == null ||
                              widget.isNewScheme != true) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(
                                    user: widget.user,
                                  ),
                                ),
                                (route) => false);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaymentFailedScreeen(
                                    user: widget.user,
                                    amount: widget.payablecontroller.text,
                                    scheme: widget.scheme,
                                    schemeDetails: widget.schemeDetails,
                                    isNewScheme: widget.isNewScheme,
                                  ),
                                ));
                          } else {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(
                                      // user: widget.user,
                                      ),
                                ),
                                (route) => false);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentFailedScreeen(
                                  user: widget.user,
                                  amount: widget.payablecontroller.text,
                                  scheme: widget.scheme,
                                  schemeDetails: widget.schemeDetails,
                                  isNewScheme: widget.isNewScheme,
                                ),
                              ),
                            );
                          }
                        } else if (respModel.status == "SUCCESS" ||
                            respModel.responseCode == "0") {
                          context
                              .read<PaymentresponseBloc>()
                              .add(const AddRresponseLoadingEvent());

                          canPop = false;
                          context.read<UpdatepaymentstatusBloc>().add(
                                PaymentstatusUpdateEvent(
                                    updatestatus: PaymentStatusUpdateModel(
                                      amt: widget.payablecontroller.text,
                                      cusId: widget.user.cusId,
                                      goldRate: widget.schemeDetails.goldRate ??
                                          "5770.00",
                                      joinId: widget.schemeDetails.joinId,
                                      orderId: widget.orderID,
                                      payableAmt: widget.payablecontroller.text,
                                      response: respModel.status,
                                      schemeId: widget.scheme.schemeNo,
                                      subCode: widget.scheme.subId,
                                      wgt: getgoldweight(
                                        double.parse(
                                            widget.schemeDetails.goldRate ??
                                                "5770.00"),
                                        double.parse(
                                            widget.payablecontroller.text),
                                      ),
                                    ),
                                    gpayresp: respModel),
                              );
                        } else {
                          if (widget.isNewScheme == null ||
                              widget.isNewScheme != true) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(
                                    user: widget.user,
                                  ),
                                ),
                                (route) => false);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaymentFailedScreeen(
                                    user: widget.user,
                                    amount: widget.payablecontroller.text,
                                    scheme: widget.scheme,
                                    schemeDetails: widget.schemeDetails,
                                    isNewScheme: widget.isNewScheme,
                                  ),
                                ));
                          } else {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(
                                      // user: widget.user,
                                      ),
                                ),
                                (route) => false);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentFailedScreeen(
                                  user: widget.user,
                                  amount: widget.payablecontroller.text,
                                  scheme: widget.scheme,
                                  schemeDetails: widget.schemeDetails,
                                  isNewScheme: widget.isNewScheme,
                                ),
                              ),
                            );
                          }
                        }

                        logger.e("ithaan bloc response inc $response");
                      } else {
                        logger.e(response ?? "nulll");

                        if (widget.isNewScheme == null ||
                            widget.isNewScheme != true) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                  user: widget.user,
                                ),
                              ),
                              (route) => false);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PaymentFailedScreeen(
                                  user: widget.user,
                                  amount: widget.payablecontroller.text,
                                  scheme: widget.scheme,
                                  schemeDetails: widget.schemeDetails,
                                  isNewScheme: widget.isNewScheme,
                                ),
                              ));
                        } else {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(
                                    // user: widget.user,
                                    ),
                              ),
                              (route) => false);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentFailedScreeen(
                                user: widget.user,
                                amount: widget.payablecontroller.text,
                                scheme: widget.scheme,
                                schemeDetails: widget.schemeDetails,
                                isNewScheme: widget.isNewScheme,
                              ),
                            ),
                          );
                        }
                      }
                    },
                    paymentstateReset: () {},
                    responseLoadingState: () {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return const PopScope(
                            canPop: false,
                            child: AlertDialog(
                              surfaceTintColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              content: Center(
                                child: CircularProgressIndicator(
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    });
              },
              builder: (context, state) {
                return Padding(
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
                          enabled: false,
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
                      InkWell(
                        onTap: () async {
                          // launchGooglePayUPIIntent(
                          //   widget.scheme.subId!,
                          //   widget.scheme.merchantCode!,
                          //   widget.orderID,
                          // );
                          const platform = MethodChannel(
                              'com.example.your_flutter_app/googlePay');

                          try {
                            await platform
                                .invokeMethod('makeGooglePayTransaction', {
                              'merchantVpa': widget.scheme.subId!,
                              'merchantName': "Regal Jewellers",
                              'merchantCode': widget.scheme.merchantCode!,
                              'transactionRefId': widget.orderID,
                              'transactionNote': 'test payment',
                              'orderAmount': '1',
                            });

                            platform.setMethodCallHandler((call) async {
                              logger.e(call.method);
                              if (call.method == "returnResult") {
                                logger.e(
                                    'call arrgs${call.arguments.toString()}');
                                /* final trxtfinal = call.arguments["trxt"] ??
                                      "transaction failed || null"; */

                                context.read<PaymentresponseBloc>().add(
                                      CheckpaymentresponseEvent(
                                          response: call.arguments == null ||
                                                  call.arguments["trxt"] ==
                                                      null ||
                                                  call.arguments.toString() ==
                                                      "{trxt: null}"
                                              ? "transaction failed || null"
                                              : call.arguments["trxt"]),
                                    );
                              }
                              return null;
                            });
                          } catch (e) {
                            logger.e("Error: $e");
                          }
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
                          // paytmapiintent(
                          //   widget.scheme.subId!,
                          //   widget.scheme.merchantCode!,
                          //   widget.orderID,
                          // );
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
                );
              },
            );
          },
        ),
      ),
    );
  }

  getgoldweight(double goldRatePerGram, double amountSpent) {
    double goldWeight = amountSpent / goldRatePerGram;
    return goldWeight.toStringAsFixed(2);
  }
}
