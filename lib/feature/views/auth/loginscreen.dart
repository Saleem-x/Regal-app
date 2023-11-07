import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:regal_app/feature/views/auth/widgets/linewidget.dart';
import 'package:regal_app/feature/views/auth/widgets/mobilefield.dart';
import 'package:regal_app/feature/views/auth/widgets/otpfieldwidget.dart';
import 'package:regal_app/feature/views/joinnewscheme/joinnewscheme.dart';
import 'package:regal_app/feature/views/newpin/setnewpin.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: size.height > 640
          ? AllLoginWidgets(size: size)
          : SingleChildScrollView(child: AllLoginWidgets(size: size)),
    );
  }
}

String otp = '';

class AllLoginWidgets extends StatelessWidget {
  const AllLoginWidgets({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(top: size.height > 640 ? 0 : 40),
          child: SvgPicture.asset(
            'assets/others/regal_logo-optimized.svg',
            width: size.width / 2,
            height: size.height * 0.06,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: size.height * 0.07),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LineWidget(
                size: size,
                color2: kcolorblack.withOpacity(.6),
                color1: kcolorgrey.withOpacity(.0),
              ),
              SizedBox(width: size.width * 0.08),
              const Text(
                'Login',
                style: TextStyle(
                    color: kcolordark2,
                    fontFamily: kboldfont,
                    fontWeight: FontWeight.w400,
                    fontSize: 22),
              ),
              SizedBox(width: size.width * 0.08),
              LineWidget(
                size: size,
                color1: kcolorblack.withOpacity(.6),
                color2: kcolorgrey.withOpacity(.0),
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
                  fontSize: size.height * 0.017,
                  color: kcolorblack.withOpacity(.6),
                  fontFamily: kprimaryfont,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Mobile Number',
                style: TextStyle(
                    fontSize: 10,
                    color: kcolordarkred.withOpacity(.7),
                    fontFamily: kprimaryfont),
              ),
            ],
          ),
        ),
        MobileFieldWidget(size: size),
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
                    fontSize: 10,
                    color: kcolordarkred.withOpacity(.7),
                    fontFamily: kprimaryfont),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        OtpFIeldWidget(size: size),
        SizedBox(
          height: size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetNewPinScreen(),
                      ));
                },
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
            onPressed: () {
              if (otp.length == 4) {
                log('ok');
              } else {
                if (Platform.isIOS) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: kcolorwhite,
                      title: const Text("Alert"),
                      content: const Text("please enter Your Four Digit Pin"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Ok'),
                        )
                      ],
                    ),
                  );
                } else {
                  showCupertinoDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CupertinoAlertDialog(
                        title: const Text("Alert"),
                        content: const Text("please enter Your Four Digit Pin"),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: const Text("Cancel"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          CupertinoDialogAction(
                            child: const Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              }
            },
            child: const Text(
              'Login',
              style: TextStyle(color: kcolorwhite, fontSize: 17),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'OR',
              style:
                  TextStyle(fontFamily: 'assets/fonts/SFPRODISPLAYREGULAR.OTF'),
            )
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
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
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JoinNewSchemeScreen(),
                  ));
            },
            child: const Text(
              'Join New Scheme',
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
    );
  }
}
