import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class NewSchmFieldWidget extends StatelessWidget {
  const NewSchmFieldWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.controller,
      required this.type});

  final String title;
  final String icon;
  final TextEditingController controller;
  final TextInputType type;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: kcolordarkred.withOpacity(.7),
                  ),
                ),
                const Text(
                  ' *',
                  style: TextStyle(
                    fontSize: 14,
                    color: kcolordarkred,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Row(
              children: [
                SizedBox(
                  child: SvgPicture.asset(
                    icon,
                    height: 15.h,
                    width: 15.w,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.07,
                ),
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter $title';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: type,
                    // inputFormatters: [
                    //   // LengthLimitingTextInputFormatter(10),
                    //   // FilteringTextInputFormatter.digitsOnly
                    // ],
                    decoration: InputDecoration(
                      isDense: true,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kcolorblack.withOpacity(
                            .3,
                          ),
                        ),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kcolorblack.withOpacity(
                            .3,
                          ),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kcolorblack.withOpacity(
                            .3,
                          ),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: kcolorblack.withOpacity(
                            .3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
