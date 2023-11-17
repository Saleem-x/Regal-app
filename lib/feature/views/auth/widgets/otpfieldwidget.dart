import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/state/bloc/newschemeotp/newschemeotp_bloc.dart';
import 'package:regal_app/feature/views/auth/loginscreen.dart';
import 'package:regal_app/feature/views/joinnewscheme/newschemedetail.dart';

class OtpFIeldWidget extends StatelessWidget {
  const OtpFIeldWidget(
      {super.key, required this.size, this.mobNo, this.newpin});

  final Size size;
  final String? mobNo;
  final TextEditingController? newpin;

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
                borderColor: kcolorwhite,
                disabledBorderColor: kcolorwhite,
                enabledBorderColor: kcolorwhite,
                errorBorderColor: kcolorwhite,
                focusBorderColor: kcolorwhite,
              ),
              onCompleted: (pin) {
                if (pin.length == 4) {
                  otp = pin;
                  otpfield = pin;
                  if (newpin != null) {}
                  if (mobNo != null && mobNo!.length == 10) {
                    context.read<NewschemeotpBloc>().add(
                          VerfiOtpEvent(mobileNO: mobNo!, otp: otpfield),
                        );
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
                borderColor: kcolorwhite,
                disabledBorderColor: kcolorwhite,
                enabledBorderColor: kcolorwhite,
                errorBorderColor: kcolorwhite,
                focusBorderColor: kcolorwhite,
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
