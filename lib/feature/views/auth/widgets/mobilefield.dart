import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:flutter/services.dart';

class MobileFieldWidget extends StatelessWidget {
  const MobileFieldWidget({
    super.key,
    required this.size,
  });

  final Size size;

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
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                prefixText: '+91  ',
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
