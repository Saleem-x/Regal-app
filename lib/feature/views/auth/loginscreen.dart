import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/others/regal_logo-optimized.svg',
              width: size.width / 2,
              height: size.height * 0.06,
              fit: BoxFit.cover,
            ),
          ),
          /* Image.asset(
            'assets/images/LOGO-REGAL_1024.png',
            fit: BoxFit.fitHeight,
            width: size.width / 2,
            height: size.height * 0.06,
            filterQuality: FilterQuality.high,
          ), */
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
                        0.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: size.width * 0.08),
                const Text(
                  'Login',
                  style: TextStyle(
                      color: kcolordark2,
                      fontFamily: 'assets/fonts/SFPRODISPLAYBOLD.OTF',
                      fontWeight: FontWeight.w400,
                      fontSize: 22),
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
                        0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login Using Mobile Number',
                style: TextStyle(
                    fontSize: size.height * 0.019,
                    color: kcolorblack.withOpacity(.6),
                    fontFamily: 'assets/fonts/SFPRODISPLAYREGULAR.OTF',
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontSize: 12,
                    color: kcolordarkred,
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Pin',
                  style: TextStyle(
                    fontSize: 12,
                    color: kcolordarkred,
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
          ),
          SizedBox(
            height: size.height * 0.02,
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
                    style: TextStyle(color: kcolordark2),
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
              color: kredbutton,
              height: 35,
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
              height: 35,
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
          ),
        ],
      ),
    );
  }
}
