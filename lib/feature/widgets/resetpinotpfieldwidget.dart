import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

OtpFieldController otpFieldController = OtpFieldController();

class ResetPinOtpFIeldWidget extends StatelessWidget {
  const ResetPinOtpFIeldWidget(
      {super.key, required this.size, this.mobNo, required this.newpin});

  final Size size;
  final String? mobNo;
  final TextEditingController newpin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 7.sp,
                ),
                SvgPicture.asset(
                  'assets/svg/lockre.svg',
                  height: 20.h,
                  width: 14.w,
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Expanded(
            child: /* OTPTextField(
              length: 4,
              keyboardType: TextInputType.number,
              width: size.width,
              fieldWidth: size.width * 0.13,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              controller: otpFieldController,
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
            ), */
                PinCodeTextField(
              cursorColor: kredbutton,
              appContext: context,
              length: 4,
              controller: newpin,
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
              onCompleted: (pin) {
                if (pin.length == 4) {
                  newpin.text = pin;
                }
              },
              onChanged: (pin) {
                newpin.text = pin;
              },
            ),
          ),
        ],
      ),
    );
  }
}
