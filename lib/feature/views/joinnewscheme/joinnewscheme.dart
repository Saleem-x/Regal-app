import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
 import 'package:regal_app/feature/views/auth/widgets/linewidget.dart';
import 'package:regal_app/feature/views/auth/widgets/mobilefield.dart';
import 'package:regal_app/feature/views/auth/widgets/otpfieldwidget.dart';
import 'package:regal_app/feature/views/joinnewscheme/newschemedetail.dart';

class JoinNewSchemeScreen extends StatefulWidget {
  const JoinNewSchemeScreen({super.key});

  @override
  State<JoinNewSchemeScreen> createState() => _JoinNewSchemeScreenState();
}

final _mobilecontroller = TextEditingController();

class _JoinNewSchemeScreenState extends State<JoinNewSchemeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: size.height > 640
          ? ALLJoinScreenWidgets(size: size)
          : SingleChildScrollView(child: ALLJoinScreenWidgets(size: size)),
    );
  }
}

class ALLJoinScreenWidgets extends StatelessWidget {
  const ALLJoinScreenWidgets({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: size.height * 0.09),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
          ],
        ),
        SizedBox(height: size.height * 0.06),
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
                'New Scheme',
                style: TextStyle(
                    color: kcolordark2,
                     fontWeight: FontWeight.w400,
                    fontSize: 18),
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
        SizedBox(height: size.height * 0.07),
        Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Mobile Number',
                style: TextStyle(
                    fontSize: 12,
                    color: kcolordarkred.withOpacity(.7),
                    ),
              ),
            ],
          ),
        ),
        MobileFieldWidget(size: size, controller: _mobilecontroller),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: kredbutton,
                onPressed: () {},
                child: const Text(
                  'Send OTP',
                  style:
                      TextStyle( color: kcolorwhite),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: size.height * 0.06),
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
                'Verify OTP',
                style: TextStyle(
                    color: kcolordark2,
                     fontWeight: FontWeight.w400,
                    fontSize: 18),
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
        SizedBox(height: size.height * 0.06),
        Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Enter OTP',
                style: TextStyle(
                    fontSize: 12,
                    color: kcolordarkred.withOpacity(.7),
                     ),
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.01),
        OtpFIeldWidget(size: size),
        SizedBox(height: size.height * 0.06),
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JoinNewSchemeDetailScreen(),
                  ));
            },
            child: const Text(
              'Proceed',
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
              'Already Have an Account?',
              style: TextStyle(),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Login',
                style: TextStyle(color: kcolorred),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
