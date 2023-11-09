import 'package:flutter/material.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';

class NewSchmFieldWidget extends StatelessWidget {
  const NewSchmFieldWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.controller,
      required this.type});

  final String title;
  final IconData icon;
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
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Row(
              children: [
                SizedBox(
                  child: Icon(
                    icon,
                    size: 20,
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
