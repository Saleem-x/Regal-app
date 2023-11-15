import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kbgcolor,
      appBar: AppBar(
        backgroundColor: kbgcolor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
          ),
        ),
        title: Text(
          'About',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/others/regal_logo-optimized.svg',
                width: size.width / 2,
                height: size.height * 0.06,
                fit: BoxFit.cover,
              ),
            ],
          ),
          SizedBox(
            height: 90.h,
          ),
          Text(
            'App Version',
            style: TextStyle(
              fontSize: 12.sp,
              color: ktextgrey,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'UAT_Version.1.0.0',
            style: TextStyle(
              fontSize: 14.sp,
              color: kcolorblack,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            width: 60.w,
            child: Divider(
              color: kcolorgrey.withOpacity(.7),
              thickness: 1.2.h,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'About Regal Jewellers',
            style: TextStyle(
              fontSize: 10.sp,
              color: ktextgrey,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'www.regaljewellers.net',
              style: TextStyle(
                fontSize: 14.sp,
                color: kredbutton,
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Terms & Policies',
              style: TextStyle(
                fontSize: 12.sp,
                color: kredbutton,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
