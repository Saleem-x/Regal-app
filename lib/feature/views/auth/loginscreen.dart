import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/LOGO-REGAL_1024.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.07),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: size.width / 3,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    kcolorgrey.withOpacity(.0),
                                    kcolorblack.withOpacity(.6)
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Padding(
                              padding: EdgeInsets.all(
                                1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.08),
                        Text(
                          'Login',
                          style: kprimaryfont(fontSize: 22, color: kcolorred),
                        ),
                        SizedBox(width: size.width * 0.08),
                        Expanded(
                          child: Container(
                            width: size.width / 3,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    kcolorblack.withOpacity(.6),
                                    kcolorgrey.withOpacity(.0),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: const Padding(
                              padding: EdgeInsets.all(
                                1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login Using Mobile Number',
                        style: TextStyle(
                          fontSize: size.height * 0.02,
                          color: kcolorblack.withOpacity(.6),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.06,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Mobile Number',
                          style: TextStyle(
                            fontSize: 12,
                            color: kcolorred.withOpacity(.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 30),
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
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
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
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Pin',
                          style: TextStyle(
                            fontSize: 14,
                            color: kcolorred.withOpacity(.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 30),
                    child: Row(
                      children: [
                        const SizedBox(
                          child: Icon(FontAwesomeIcons.lock),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        Expanded(
                          child: OTPTextField(
                            length: 4,
                            width: size.width,
                            fieldWidth: size.width * 0.15,
                            style: const TextStyle(fontSize: 17),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.box,
                            otpFieldStyle: OtpFieldStyle(
                              backgroundColor: kcolorgrey.withOpacity(.1),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Set New Pin',
                            style: TextStyle(color: kcolorred),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: MaterialButton(
                      color: kcolorred,
                      height: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minWidth: size.width,
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(color: kcolorwhite, fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'OR',
                        style: TextStyle(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: MaterialButton(
                      color: kgold1,
                      height: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minWidth: size.width,
                      onPressed: () {},
                      child: const Text(
                        'Joinn New Scheme',
                        style: TextStyle(color: kcolorwhite, fontSize: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'facing any trouble?',
                        style: TextStyle(),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Contact Us',
                          style: TextStyle(color: kcolorred),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
