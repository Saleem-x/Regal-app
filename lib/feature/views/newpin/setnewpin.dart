import 'package:flutter/material.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/views/auth/widgets/linewidget.dart';
import 'package:regal_app/feature/views/auth/widgets/mobilefield.dart';
import 'package:regal_app/feature/views/auth/widgets/otpfieldwidget.dart';

class SetNewPinScreen extends StatefulWidget {
  const SetNewPinScreen({super.key});

  @override
  State<SetNewPinScreen> createState() => _SetNewPinScreenState();
}

final _mobilecontroller = TextEditingController();

class _SetNewPinScreenState extends State<SetNewPinScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Set New Pin',
          style: TextStyle(),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
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
                    'Get OTP',
                    style: TextStyle(color: kcolorwhite),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
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
            height: size.height * 0.05,
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
                    color: kcolordarkred.withOpacity(.7),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          OtpFIeldWidget(size: size),
          SizedBox(
            height: size.height * 0.08,
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
                'Proceed',
                style: TextStyle(color: kcolorwhite, fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
