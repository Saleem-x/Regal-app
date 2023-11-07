import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class OtpFIeldWidget extends StatelessWidget {
  const OtpFIeldWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 30),
      child: Row(
        children: [
          const SizedBox(
            child: Icon(Iconsax.lock),
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Expanded(
            child: OTPTextField(
              length: 4,
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
