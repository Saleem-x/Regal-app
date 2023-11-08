import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:flutter/services.dart';

class MobileFieldWidget extends StatelessWidget {
  const MobileFieldWidget({
    super.key,
    required this.size,
    required this.controller,
  });

  final Size size;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Row(
        children: [
          const SizedBox(
            child: Icon(FontAwesomeIcons.phone),
          ),
          SizedBox(
            width: size.width * 0.07,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please enter mobile number';
                } else if (value.length < 10) {
                  return 'mobile number should be 10';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                isDense: true,
                prefixIcon: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('+91  ', textAlign: TextAlign.left),
                  ],
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kcolorblack.withOpacity(
                      .6,
                    ),
                  ),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kcolorblack.withOpacity(
                      .6,
                    ),
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kcolorblack.withOpacity(
                      .6,
                    ),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kcolorblack.withOpacity(
                      .6,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
