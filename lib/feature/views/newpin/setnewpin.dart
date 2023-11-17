import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/pin_reset_otp_model/pin_reset_otp_model.dart';
import 'package:regal_app/feature/state/bloc/resetpin/resetpin_bloc.dart';
import 'package:regal_app/feature/state/cubit/otptimer/otptimer_cubit.dart';
import 'package:regal_app/feature/views/auth/widgets/linewidget.dart';
import 'package:regal_app/feature/views/auth/widgets/mobilefield.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/otptimer.dart';
import 'package:regal_app/feature/views/newpin/resetpinscree.dart';
import 'package:regal_app/feature/widgets/resetpinotpfieldwidget.dart';

class SetNewPinScreen extends StatefulWidget {
  const SetNewPinScreen({super.key});

  @override
  State<SetNewPinScreen> createState() => _SetNewPinScreenState();
}

final _mobilecontroller = TextEditingController();
final _otpcontroller = TextEditingController();
final _cusIdcontroller = TextEditingController();

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

class _SetNewPinScreenState extends State<SetNewPinScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Set New Pin',
          style: TextStyle(),
        ),
      ),
      body: Form(
        key: _formkey,
        child: BlocConsumer<ResetpinBloc, ResetpinState>(
          listener: (context, state) {
            logger.i('$state');
            state.when(
              otpSendSuccess: (resentotpmodel) {
                _cusIdcontroller.text = resentotpmodel.cusId!;
              },
              otpstateinitial: () {
                _otpcontroller.clear();
              },
              otpSendState: () {
                context.read<OtptimerCubit>().startTimer();
              },
              verifiedOtpState: (verotpmodel) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResetPInScreen(otpmodel: verotpmodel),
                  ),
                );
                _otpcontroller.clear();
              },
              facingissuestate: () {},
              otpVerificationFailed: (otpmodel) {
                _otpcontroller.clear();
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
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile Number',
                        style: TextStyle(
                          fontSize: 12,
                          color: kcolordarkred.withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                ),
                MobileFieldWidget(size: size, controller: _mobilecontroller),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      state.when(
                        otpstateinitial: () => const SizedBox.shrink(),
                        otpSendState: () => const OtpTimerWidget(),
                        otpSendSuccess: (resentotpmodel) =>
                            const OtpTimerWidget(),
                        verifiedOtpState: (verotpmodel) =>
                            const SizedBox.shrink(),
                        facingissuestate: () => const SizedBox.shrink(),
                        otpVerificationFailed: (otpmodel) =>
                            const SizedBox.shrink(),
                      ),
                      state.when(
                        otpstateinitial: () => ResetPinOtpButton(
                          formkey: _formkey,
                          mobile: _mobilecontroller.text,
                        ),
                        otpSendState: () =>
                            BlocBuilder<OtptimerCubit, OtptimerState>(
                          builder: (context, otptimer) {
                            return otptimer.time <= 29
                                ? const ResetPinOtpButtonDisable()
                                : ResetPinOtpButton(
                                    formkey: _formkey,
                                    mobile: _mobilecontroller.text,
                                  );
                          },
                        ),
                        otpSendSuccess: (resentotpmodel) =>
                            BlocBuilder<OtptimerCubit, OtptimerState>(
                          builder: (context, otptimer) {
                            return otptimer.time <= 29
                                ? const ResetPinOtpButtonDisable()
                                : ResetPinOtpButton(
                                    formkey: _formkey,
                                    mobile: _mobilecontroller.text,
                                  );
                          },
                        ),
                        verifiedOtpState: (verotpmodel) => ResetPinOtpButton(
                          formkey: _formkey,
                          mobile: _mobilecontroller.text,
                        ),
                        facingissuestate: () => ResetPinOtpButton(
                          formkey: _formkey,
                          mobile: _mobilecontroller.text,
                        ),
                        otpVerificationFailed: (otpmodel) => ResetPinOtpButton(
                          formkey: _formkey,
                          mobile: _mobilecontroller.text,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
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
                      const Text(
                        'Verify OTP',
                        style: TextStyle(
                            color: kcolordark2,
                            fontWeight: FontWeight.w400,
                            fontSize: 22),
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
                SizedBox(
                  height: size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Enter Otp',
                        style: TextStyle(
                          fontSize: 12,
                          color: kcolordarkred.withOpacity(.7),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                ResetPinOtpFIeldWidget(size: size, newpin: _otpcontroller),
                state.maybeWhen(
                  orElse: () => ConfirmOtpButtonDisabled(size: size),
                  otpSendSuccess: (pinResetOtpModel) {
                    logger.i(pinResetOtpModel.cusId);
                    return OtPConfirmButton(
                        size: size, cusId: pinResetOtpModel.cusId!);
                  },
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ResetPInScreen(otpmodel: PinResetOtpModel()),
                          ));
                    },
                    icon: Icon(Icons.abc))
              ],
            );
          },
        ),
      ),
    );
  }
}

class OtPConfirmButton extends StatelessWidget {
  const OtPConfirmButton({
    super.key,
    required this.size,
    required this.cusId,
  });

  final Size size;
  final String cusId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: MaterialButton(
        color: kredbutton,
        height: 35,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minWidth: size.width,
        onPressed: () {
          _cusIdcontroller.text = '47663';
          if (_formkey.currentState!.validate()) {
            if (_otpcontroller.text.length == 4) {
              if (_cusIdcontroller.text.isEmpty) {
                showCupertinoDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CupertinoAlertDialog(
                        title: const Text("Alert"),
                        content: const Text(
                            "We are unable to process your request now, please try again later"),
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
                    });
              } else {
                //!change to _cusid controller
                context.read<ResetpinBloc>().add(
                      VerfiOtpEvent(
                          mobileNO: _cusIdcontroller.text,
                          otp: _otpcontroller.text),
                    );
              }
            } else if (_otpcontroller.text.length < 4) {
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
                      content: const Text("please enter Your Four Digit OTP"),
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
          /*  Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ResetPInScreen(),
          ),
        ); */
        },
        child: const Text(
          'Proceed',
          style: TextStyle(color: kcolorwhite, fontSize: 17),
        ),
      ),
    );
  }
}

class ConfirmOtpButtonDisabled extends StatelessWidget {
  const ConfirmOtpButtonDisabled({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: MaterialButton(
        color: kredbutton,
        height: 35,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minWidth: size.width,
        onPressed: () {
          _cusIdcontroller.text = '47663';
          if (_formkey.currentState!.validate()) {
            if (_otpcontroller.text.length == 4) {
              if (_cusIdcontroller.text.isEmpty) {
                showCupertinoDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CupertinoAlertDialog(
                        title: const Text("Alert"),
                        content: const Text(
                            "We are unable to process your request now, please try again later"),
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
                    });
              } else {
                //!change to _cusid controller
                context.read<ResetpinBloc>().add(
                      VerfiOtpEvent(
                          mobileNO: _cusIdcontroller.text,
                          otp: _otpcontroller.text),
                    );
              }
            } else if (_otpcontroller.text.length < 4) {
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
                      content: const Text("please enter Your Four Digit OTP"),
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
        },
        child: const Text(
          'Proceed',
          style: TextStyle(color: kcolorwhite, fontSize: 17),
        ),
      ),
    );
  }
}

class ResetPinOtpButtonDisable extends StatelessWidget {
  const ResetPinOtpButtonDisable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      color: const Color(0xFFD1D1D1),
      onPressed: () {},
      child: const Text(
        'Send OTP',
        style: TextStyle(color: kcolorwhite),
      ),
    );
  }
}

class ResetPinOtpButton extends StatelessWidget {
  const ResetPinOtpButton({
    super.key,
    required this.formkey,
    required this.mobile,
  });

  final GlobalKey<FormState> formkey;
  final String mobile;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: kredbutton,
      onPressed: () async {
        if (formkey.currentState!.validate()) {
          context.read<ResetpinBloc>().add(const OtptimerStateEvent());
          context.read<ResetpinBloc>().add(
                SendOtpEvent(
                  mobileNO: mobile,
                ),
              );
        }
      },
      child: const Text(
        'Send OTP',
        style: TextStyle(color: kcolorwhite),
      ),
    );
  }
}
