import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class DobSelectorWidget extends StatelessWidget {
  const DobSelectorWidget({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Date of Birth',
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
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Row(
            children: [
              SizedBox(
                child: SvgPicture.asset(
                  'assets/svg/calender.svg',
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
                      return 'please enter mobile number';
                    } else if (value.length < 10) {
                      return 'mobile number should be 10';
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.none,

                  // inputFormatters: [
                  //   // LengthLimitingTextInputFormatter(10),
                  //   // FilteringTextInputFormatter.digitsOnly
                  // ],
                  onTap: () {
                    showCupertinoModalPopup(
                      context: context,
                      builder: (context) {
                        return Container(
                          color: kcolorwhite,
                          height: 250,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Done',
                                      style: TextStyle(
                                        color: kredbutton.withOpacity(.9),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Expanded(
                                child: CupertinoDatePicker(
                                  initialDateTime: DateTime.now(),
                                  maximumDate: DateTime.now(),
                                  onDateTimeChanged: (value) {
                                    controller.text =
                                        "${value.day}/${value.month}/${value.year}";
                                  },
                                  use24hFormat: true,
                                  mode: CupertinoDatePickerMode.date,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: controller.text,
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
                    suffixIcon: IconButton(
                      onPressed: () {
                        // showDatePicker(
                        //   context: context,
                        //   initialDate: DateTime.now(),
                        //   firstDate: DateTime(1950),
                        //   lastDate: DateTime.now(),
                        //   keyboardType: TextInputType.datetime,
                        //   onDatePickerModeChange: (value) {},
                        // );
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) {
                            return Container(
                              color: kcolorwhite,
                              height: 250,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'Done',
                                          style: TextStyle(
                                            color: kredbutton.withOpacity(.9),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: CupertinoDatePicker(
                                      onDateTimeChanged: (value) {
                                        controller.text =
                                            "${value.day}/${value.month}/${value.year}";
                                      },
                                      use24hFormat: true,
                                      mode: CupertinoDatePickerMode.date,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: const Icon(Iconsax.calendar_edit),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
