import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';

import '../newschemedetail.dart';

class NewSchmDropDownWidget extends StatelessWidget {
  const NewSchmDropDownWidget(
      {super.key,
      required this.controller,
      required this.title,
      required this.preicon});

  final TextEditingController controller;
  final String title;
  final IconData preicon;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 10,
                      color: kcolordarkred.withOpacity(.7),
                      fontFamily: kprimaryfont),
                ),
                const Text(
                  ' *',
                  style: TextStyle(
                      fontSize: 14,
                      color: kcolordarkred,
                      fontFamily: kprimaryfont),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              children: [
                SizedBox(
                  child: Icon(
                    preicon,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.07,
                ),
                Expanded(
                  child: TextFormField(
                    onTap: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return Container(
                            color: kcolorwhite,
                            height: 150,
                            child: CupertinoPicker(
                              itemExtent: 30,
                              onSelectedItemChanged: (value) {
                                controller.text = dropdownItems[value];
                              },
                              children: List.generate(
                                dropdownItems.length,
                                (index) => Text(
                                  dropdownItems[index],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
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
                          // // showDatePicker(
                          // //   context: context,
                          // //   initialDate: DateTime.now(),
                          // //   firstDate: DateTime(1950),
                          // //   lastDate: DateTime.now(),
                          // //   keyboardType: TextInputType.datetime,
                          // //   onDatePickerModeChange: (value) {},
                          // // );
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) {
                              return Container(
                                color: kcolorwhite,
                                height: 150,
                                child: CupertinoPicker(
                                  itemExtent: 30,
                                  onSelectedItemChanged: (value) {},
                                  children: List.generate(
                                    dropdownItems.length,
                                    (index) => Text(
                                      dropdownItems[index],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_drop_down,
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
