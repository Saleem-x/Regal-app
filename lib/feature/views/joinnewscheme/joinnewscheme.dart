import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/state/bloc/newschemeotp/newschemeotp_bloc.dart';
import 'package:regal_app/feature/state/cubit/otptimer/otptimer_cubit.dart';
import 'package:regal_app/feature/views/auth/widgets/linewidget.dart';
import 'package:regal_app/feature/views/auth/widgets/mobilefield.dart';
import 'package:regal_app/feature/views/auth/widgets/otpfieldwidget.dart';
import 'package:regal_app/feature/views/joinnewscheme/newschemedetail.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/otptimer.dart';

class JoinNewSchemeScreen extends StatefulWidget {
  const JoinNewSchemeScreen({super.key});

  @override
  State<JoinNewSchemeScreen> createState() => _JoinNewSchemeScreenState();
}

class _JoinNewSchemeScreenState extends State<JoinNewSchemeScreen> {
  final _mobilecontroller = TextEditingController();
  final _otpcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kbgcolor,
      body: size.height >= 640
          ? SingleChildScrollView(
              child: ALLJoinScreenWidgets(
              size: size,
              formkey: _formkey,
              mobilecontroller: _mobilecontroller,
              otpcontroller: _otpcontroller,
            ))
          : SingleChildScrollView(
              child: ALLJoinScreenWidgets(
              size: size,
              formkey: _formkey,
              mobilecontroller: _mobilecontroller,
              otpcontroller: _otpcontroller,
            )),
    );
  }

  @override
  void dispose() {
    _mobilecontroller.dispose();
    _otpcontroller.dispose();
    super.dispose();
  }
}

class ALLJoinScreenWidgets extends StatelessWidget {
  const ALLJoinScreenWidgets({
    super.key,
    required this.size,
    required this.mobilecontroller,
    required this.otpcontroller,
    required this.formkey,
  });

  final Size size;
  final TextEditingController mobilecontroller, otpcontroller;
  final GlobalKey<FormState> formkey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: BlocListener<NewschemeotpBloc, NewschemeotpState>(
        listener: (context, state) {
          logger.e('state ethhaaan$state');
          state.when(
            otpSendSuccess: () {},
            otpstateinitial: () {},
            otpSendState: () {
              context.read<OtptimerCubit>().startTimer();
            },
            verifiedOtpState: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => JoinNewSchemeDetailScreen(
                      mobilenumber: mobilecontroller.text),
                ),
              );
              otpfield = '';
            },
            facingissuestate: () {
              showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: const Text('Alert'),
                    content: const Text('Something went Wrong'),
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
              );
            },
            otpVerificationFailed: (otpmodel) {
              showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: const Text('Alert'),
                    content: Text(otpmodel),
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
              );
            },
          );
        },
        child: BlocBuilder<NewschemeotpBloc, NewschemeotpState>(
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(height: 100.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: size.height > 640 ? 0 : 0),
                      child: SvgPicture.asset(
                        'assets/others/regal_logo-optimized.svg',
                        width: size.width / 2,
                        height: size.height * 0.06,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LineWidget(
                        size: size,
                        color2: kcolorblack.withOpacity(.6),
                        color1: kcolorgrey.withOpacity(.0),
                      ),
                      SizedBox(width: size.width * 0.08),
                      Text(
                        'New Scheme',
                        style: TextStyle(
                            color: const Color(0xFF990000),
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp),
                      ),
                      SizedBox(width: size.width * 0.08),
                      LineWidget(
                        size: size,
                        color1: kcolorblack.withOpacity(.6),
                        color2: kcolorgrey.withOpacity(.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile Number',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: kcolordarkred.withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                ),
                MobileFieldWidget(size: size, controller: mobilecontroller),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      state.when(
                        otpstateinitial: () => const SizedBox.shrink(),
                        otpSendState: () => const OtpTimerWidget(),
                        otpSendSuccess: () => const OtpTimerWidget(),
                        verifiedOtpState: () => const SizedBox.shrink(),
                        facingissuestate: () => const SizedBox.shrink(),
                        otpVerificationFailed: (otpmodel) =>
                            const SizedBox.shrink(),
                      ),
                      state.when(
                        otpstateinitial: () => MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: kredbutton,
                          onPressed: () async {
                            if (formkey.currentState!.validate()) {
                              context
                                  .read<NewschemeotpBloc>()
                                  .add(const OtptimerStateEvent());
                              context.read<NewschemeotpBloc>().add(
                                    SendOtpEvent(
                                      mobileNO: mobilecontroller.text,
                                    ),
                                  );
                            }
                          },
                          child: const Text(
                            'Send OTP',
                            style: TextStyle(color: kcolorwhite),
                          ),
                        ),
                        otpSendState: () =>
                            BlocBuilder<OtptimerCubit, OtptimerState>(
                          builder: (context, otptimer) {
                            return otptimer.time <= 29
                                ? MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    color: const Color(0xFFD1D1D1),
                                    onPressed: () {},
                                    child: const Text(
                                      'Send OTP',
                                      style: TextStyle(color: kcolorwhite),
                                    ),
                                  )
                                : MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    color: kredbutton,
                                    onPressed: () async {
                                      if (formkey.currentState!.validate()) {
                                        context
                                            .read<NewschemeotpBloc>()
                                            .add(const OtptimerStateEvent());
                                        context.read<NewschemeotpBloc>().add(
                                              SendOtpEvent(
                                                  mobileNO:
                                                      mobilecontroller.text),
                                            );
                                      }
                                    },
                                    child: const Text(
                                      'Send OTP',
                                      style: TextStyle(color: kcolorwhite),
                                    ),
                                  );
                          },
                        ),
                        otpSendSuccess: () =>
                            BlocBuilder<OtptimerCubit, OtptimerState>(
                          builder: (context, otptimer) {
                            return otptimer.time <= 29
                                ? MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    color: const Color(0xFFD1D1D1),
                                    onPressed: () {},
                                    child: const Text(
                                      'Send OTP',
                                      style: TextStyle(color: kcolorwhite),
                                    ),
                                  )
                                : MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    color: kredbutton,
                                    onPressed: () async {
                                      if (formkey.currentState!.validate()) {
                                        context
                                            .read<NewschemeotpBloc>()
                                            .add(const OtptimerStateEvent());
                                        context.read<NewschemeotpBloc>().add(
                                              SendOtpEvent(
                                                  mobileNO:
                                                      mobilecontroller.text),
                                            );
                                      }
                                    },
                                    child: const Text(
                                      'Send OTP',
                                      style: TextStyle(color: kcolorwhite),
                                    ),
                                  );
                          },
                        ),
                        verifiedOtpState: () => MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: kredbutton,
                          onPressed: () async {
                            if (formkey.currentState!.validate()) {
                              context
                                  .read<NewschemeotpBloc>()
                                  .add(const OtptimerStateEvent());
                              context.read<NewschemeotpBloc>().add(
                                    SendOtpEvent(
                                        mobileNO: mobilecontroller.text),
                                  );
                            }
                          },
                          child: const Text(
                            'Send OTP',
                            style: TextStyle(color: kcolorwhite),
                          ),
                        ),
                        facingissuestate: () => MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: kredbutton,
                          onPressed: () async {
                            if (formkey.currentState!.validate()) {
                              context
                                  .read<NewschemeotpBloc>()
                                  .add(const OtptimerStateEvent());
                              context.read<NewschemeotpBloc>().add(
                                    SendOtpEvent(
                                        mobileNO: mobilecontroller.text),
                                  );
                            }
                          },
                          child: const Text(
                            'Send OTP',
                            style: TextStyle(color: kcolorwhite),
                          ),
                        ),
                        otpVerificationFailed: (otpmodel) => MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: kredbutton,
                          onPressed: () async {
                            if (formkey.currentState!.validate()) {
                              context
                                  .read<NewschemeotpBloc>()
                                  .add(const OtptimerStateEvent());
                              context.read<NewschemeotpBloc>().add(
                                    SendOtpEvent(
                                        mobileNO: mobilecontroller.text),
                                  );
                            }
                          },
                          child: const Text(
                            'Send OTP',
                            style: TextStyle(color: kcolorwhite),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LineWidget(
                        size: size,
                        color2: kcolorblack.withOpacity(.6),
                        color1: kcolorgrey.withOpacity(.0),
                      ),
                      SizedBox(width: size.width * 0.08),
                      Text(
                        'Verify OTP',
                        style: TextStyle(
                            color: const Color(0xFF990000),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp),
                      ),
                      SizedBox(width: size.width * 0.08),
                      LineWidget(
                        size: size,
                        color1: kcolorblack.withOpacity(.6),
                        color2: kcolorgrey.withOpacity(.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Enter OTP',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: kcolordarkred.withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                ResetPinHeaderOtpField(
                  newpin: otpcontroller,
                  size: size,
                  mobNo: mobilecontroller.text,
                ),
                state.when(
                  otpstateinitial: () => const SizedBox.shrink(),
                  otpSendState: () => const SizedBox.shrink(),
                  verifiedOtpState: () => const SizedBox.shrink(),
                  facingissuestate: () => const SizedBox.shrink(),
                  otpSendSuccess: () => const SizedBox.shrink(),
                  otpVerificationFailed: (otpmodel) => Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.warning,
                          color: kcolorred,
                        ),
                        Text(
                          otpmodel,
                          style: const TextStyle(color: kcolorred),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: MaterialButton(
                    color: kredbutton,
                    height: 35.h,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minWidth: size.width,
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        if (otpcontroller.text.length == 4) {
                          // logger.e(otpfield);
                          context.read<NewschemeotpBloc>().add(
                                VerfiOtpEvent(
                                  mobileNO: mobilecontroller.text,
                                  otp: otpcontroller.text,
                                ),
                              );
                        } else {
                          if (!Platform.isAndroid) {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: kcolorwhite,
                                title: const Text("Alert"),
                                content: const Text("please enter 4 Digit OTP"),
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
                        }
                      }
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => JoinNewSchemeDetailScreen(
                      //           mobilenumber: _mobilecontroller.text),
                      //     ));
                    },
                    child: Text(
                      'Proceed',
                      style: TextStyle(color: kcolorwhite, fontSize: 17.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already Have an Account?',
                      style: TextStyle(),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: kcolorred),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
