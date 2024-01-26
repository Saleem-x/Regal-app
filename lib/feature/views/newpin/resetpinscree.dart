import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/pin_reset_otp_model/pin_reset_otp_model.dart';
import 'package:regal_app/feature/state/bloc/updatenewpin/updatenewpin_bloc.dart';
import 'package:regal_app/feature/views/auth/loginscreen.dart';

class ResetPInScreen extends StatefulWidget {
  final PinResetOtpModel otpmodel;
  const ResetPInScreen({super.key, required this.otpmodel});

  @override
  State<ResetPInScreen> createState() => _ResetPInScreenState();
}

class _ResetPInScreenState extends State<ResetPInScreen> {
  final _pincontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    log('ithaan cusid ${widget.otpmodel.cusId}');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Change Pin',
          style: TextStyle(),
        ),
      ),
      body: BlocConsumer<UpdatenewpinBloc, UpdatenewpinState>(
        listener: (context, state) {
          state.when(
            pinResetSuccessState: (resetstatus) {
              showCupertinoDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: Text(resetstatus.title!),
                    content: Text(resetstatus.descr!),
                    actions: <Widget>[
                      /* CupertinoDialogAction(
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
              );
              Future.delayed(const Duration(seconds: 2), () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                    (route) => false);
              });
            },
            pinResetFailedState: (resetstatus) {
              showCupertinoDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: Text(resetstatus.title!),
                    content: Text(resetstatus.descr!),
                    actions: <Widget>[
                      /* CupertinoDialogAction(
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
              );
            },
            pinresetinitial: () {},
          );
        },
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 90, top: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Enter New PIN',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: kcolordarkred.withOpacity(.7),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              /* NewPinOtpFIeldWidget(size: size, newpin: _pincontroller), */

              Padding(
                padding: const EdgeInsets.only(left: 40, right: 30),
                child: Row(
                  children: [
                    SizedBox(
                      child: SvgPicture.asset(
                        'assets/svg/lockre.svg',
                        height: 15.h,
                        width: 15.w,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Expanded(
                      child: PinCodeTextField(
                        controller: _pincontroller,
                        cursorColor: kredbutton,
                        appContext: context,
                        length: 4,
                        keyboardType: TextInputType.number,
                        autoDismissKeyboard: true,
                        enableActiveFill: true,
                        textStyle: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.normal,
                        ),
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          fieldHeight: 35.h,
                          fieldWidth: 40.w,
                          activeFillColor: kcolorgrey.withOpacity(.09),
                          inactiveFillColor: kcolorgrey.withOpacity(.09),
                          selectedFillColor: kcolorgrey.withOpacity(.09),
                          activeColor: kbgcolor,
                          selectedColor: kbgcolor,
                          disabledColor: kbgcolor,
                          inactiveColor: kbgcolor,
                          errorBorderColor: kbgcolor,
                        ),
                        onChanged: (value) {
                          if (value.length == 4) {
                            _pincontroller.text = value;
                          }
                        },
                        onCompleted: (pin) {
                          if (pin.length == 4) {
                            _pincontroller.text = pin;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: MaterialButton(
                  color: kredbutton,
                  height: 35,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minWidth: size.width,
                  onPressed: () {
                    if (_pincontroller.text.isEmpty) {
                      if (!Platform.isAndroid) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: kcolorwhite,
                            title: const Text("Alert"),
                            content: const Text("please enter A 4 Digit OTP"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Ok'),
                              )
                            ],
                          ),
                        );
                      } else {
                        showCupertinoDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CupertinoAlertDialog(
                              title: const Text("Alert"),
                              content: const Text(
                                  "please enter Your Four Digit OTP"),
                              actions: <Widget>[
                                /* CupertinoDialogAction(
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
                        );
                      }
                    } else {
                      context.read<UpdatenewpinBloc>().add(
                            updateNewPinEvent(
                                pin: _pincontroller.text,
                                cusID: widget.otpmodel.cusId!),
                          );
                    }
                  },
                  child: const Text(
                    'Confirm',
                    style: TextStyle(color: kcolorwhite, fontSize: 15),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
