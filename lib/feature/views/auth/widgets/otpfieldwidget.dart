import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/login_model/login_model.dart';
import 'package:regal_app/feature/state/bloc/login/login_bloc.dart';

import 'package:regal_app/feature/state/bloc/newschemeotp/newschemeotp_bloc.dart';
import 'package:regal_app/feature/views/auth/loginscreen.dart';
import 'package:regal_app/feature/views/joinnewscheme/newschemedetail.dart';

class OtpFIeldWidget extends StatefulWidget {
  const OtpFIeldWidget(
      {super.key, required this.size, this.mobNo, this.newpin});

  final Size size;
  final String? mobNo;
  final TextEditingController? newpin;

  @override
  State<OtpFIeldWidget> createState() => _OtpFIeldWidgetState();
}

final OtpFieldController _otpFieldController = OtpFieldController();

class _OtpFIeldWidgetState extends State<OtpFIeldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 30),
      child: Row(
        children: [
          SizedBox(
            child: SvgPicture.asset(
              'assets/svg/pin.svg',
              height: 15.h,
              width: 15.w,
            ),
          ),
          SizedBox(
            width: widget.size.width * 0.05,
          ),
          Expanded(
            child: OTPTextField(
              length: 4,
              keyboardType: TextInputType.number,
              width: widget.size.width,
              fieldWidth: widget.size.width * 0.13,
              style: const TextStyle(fontSize: 17),
              controller: _otpFieldController,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              otpFieldStyle: OtpFieldStyle(
                backgroundColor: kcolorgrey.withOpacity(.09),
                borderColor: kbgcolor,
                disabledBorderColor: kbgcolor,
                enabledBorderColor: kbgcolor,
                errorBorderColor: kbgcolor,
                focusBorderColor: kbgcolor,
              ),
              onChanged: (value) {
                otp = value;
                otpfield = value;
                if (otp.length == 4) {
                  context.read<NewschemeotpBloc>().add(
                        VerfiOtpEvent(mobileNO: widget.mobNo!, otp: otp),
                      );
                }
              },
              onCompleted: (pin) {
                if (pin.length == 4) {
                  otp = pin;
                  otpfield = pin;

                  if (widget.mobNo != null && widget.mobNo!.length == 10) {}
                  if (pin.isEmpty) {
                    otp = '';
                  }

                  pin = '';
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Ok',
                          ),
                        )
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NewPinOtpFIeldWidget extends StatelessWidget {
  const NewPinOtpFIeldWidget(
      {super.key, required this.size, this.mobNo, required this.newpin});

  final Size size;
  final String? mobNo;
  final TextEditingController newpin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 30),
      child: Row(
        children: [
          SizedBox(
            child: SvgPicture.asset(
              'assets/svg/pin.svg',
              height: 15.h,
              width: 15.w,
            ),
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Expanded(
            child: OTPTextField(
              length: 4,
              keyboardType: TextInputType.number,
              width: size.width,
              fieldWidth: size.width * 0.13,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              otpFieldStyle: OtpFieldStyle(
                backgroundColor: kcolorgrey.withOpacity(.09),
                borderColor: kbgcolor,
                disabledBorderColor: kbgcolor,
                enabledBorderColor: kbgcolor,
                errorBorderColor: kbgcolor,
                focusBorderColor: kbgcolor,
              ),
              onCompleted: (pin) {
                if (pin.length == 4) {
                  newpin.text = pin;

                  pin = '';
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Ok',
                          ),
                        )
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ResetPinHeaderOtpField extends StatelessWidget {
  const ResetPinHeaderOtpField(
      {super.key, required this.size, this.mobNo, required this.newpin});

  final Size size;
  final String? mobNo;
  final TextEditingController newpin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 30),
      child: Row(
        children: [
          SizedBox(
            child: SvgPicture.asset(
              'assets/svg/pin.svg',
              height: 15.h,
              width: 15.w,
            ),
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Expanded(
            child: OTPTextField(
              length: 4,
              keyboardType: TextInputType.number,
              width: size.width,
              fieldWidth: size.width * 0.13,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              otpFieldStyle: OtpFieldStyle(
                backgroundColor: kcolorgrey.withOpacity(.09),
                borderColor: kbgcolor,
                disabledBorderColor: kbgcolor,
                enabledBorderColor: kbgcolor,
                errorBorderColor: kbgcolor,
                focusBorderColor: kbgcolor,
              ),
              onCompleted: (pin) {
                if (pin.length == 4) {
                  newpin.text = pin;
                  context.read<NewschemeotpBloc>().add(
                        VerfiOtpEvent(mobileNO: mobNo!, otp: newpin.text),
                      );
                  // if (mobNo != null && mobNo!.length == 10) {}
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Ok',
                          ),
                        )
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPinOtpField extends StatelessWidget {
  const LoginPinOtpField(
      {super.key,
      required this.size,
      required this.mobNo,
      required this.password});

  final Size size;
  final TextEditingController mobNo;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 30),
      child: Row(
        children: [
          SizedBox(
            child: SvgPicture.asset(
              'assets/svg/lockre.svg',
              height: 20.h,
              width: 14.w,
            ),
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Expanded(
            child: OTPTextField(
              length: 4,
              keyboardType: TextInputType.number,
              width: size.width,
              fieldWidth: size.width * 0.13,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              otpFieldStyle: OtpFieldStyle(
                backgroundColor: kcolorgrey.withOpacity(.09),
                borderColor: kbgcolor,
                disabledBorderColor: kbgcolor,
                enabledBorderColor: kbgcolor,
                errorBorderColor: kbgcolor,
                focusBorderColor: kbgcolor,
              ),
              onChanged: (value) {
                password.text = value;
                if (value.length == 4) {
                  context.read<LoginBloc>().add(const AddLoadingEvent());
                  context.read<LoginBloc>().add(
                        UserLoginEvent(
                          logindata: LoginModel(
                            mob: mobNo.text,
                            pin: password.text,
                            datakey: datakey,
                          ),
                        ),
                      );
                }
              },
              onCompleted: (pin) {
                if (pin.length == 4) {
                  context.read<LoginBloc>().add(const AddLoadingEvent());
                  password.text = pin;
                  logger.i(mobNo);
                  if (mobNo.text.length == 10 && pin.length == 4) {
                    context.read<LoginBloc>().add(
                          UserLoginEvent(
                            logindata: LoginModel(
                              mob: mobNo.text,
                              pin: password.text,
                              datakey: datakey,
                            ),
                          ),
                        );
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
