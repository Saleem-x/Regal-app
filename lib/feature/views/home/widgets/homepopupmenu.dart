import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/views/about/aboutus.dart';
import 'package:regal_app/feature/views/auth/loginscreen.dart';
import 'package:regal_app/feature/views/contactus/contactusscreen.dart';
import 'package:regal_app/feature/views/termsandpolicies/tandp.dart';

class HomePopupMenu extends StatelessWidget {
  const HomePopupMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      color: kbgcolor,
      surfaceTintColor: kcolorwhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(
        'assets/others/menu.svg',
        fit: BoxFit.cover,
        height: 25,
        width: 25,
      ),
      onSelected: (value) {
        if (value == 'about') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AboutUsScreen(),
            ),
          );
        } else if (value == 't&c') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TermsAndPoliciesScreen(),
            ),
          );
        } else if (value == 'Contact Us') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContactUsScreen(),
            ),
          );
        } else if (value == 'logout') {
          if (!Platform.isAndroid) {
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
                  title: const Text("Alert!"),
                  content: const Text("Do you want to logout?"),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: const Text("No"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    CupertinoDialogAction(
                      child: const Text("yes"),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                            (route) => false);
                      },
                    ),
                  ],
                );
              },
            );
          }
        }
      },
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 'close',
            child: SvgPicture.asset(
              'assets/others/close.svg',
              fit: BoxFit.cover,
              height: 10.h,
              width: 10.w,
            ),
          ),
          PopupMenuItem(
            value: 'about',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "About",
                    style: TextStyle(color: ktextgrey, fontSize: 13.sp),
                  ),
                ),
                Divider(
                  indent: 10,
                  color: ktextgrey.withOpacity(.3),
                )
              ],
            ),
          ),
          PopupMenuItem(
            value: 't&c',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Terms and policy",
                    style: TextStyle(color: ktextgrey, fontSize: 13.sp),
                  ),
                ),
                Divider(
                  indent: 10,
                  color: ktextgrey.withOpacity(.3),
                )
              ],
            ),
          ),
          PopupMenuItem(
            value: 'Contact Us',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Text(
                    "Contact Us",
                    style: TextStyle(color: ktextgrey, fontSize: 13.sp),
                  ),
                ),
                Divider(
                  indent: 10,
                  color: ktextgrey.withOpacity(.3),
                )
              ],
            ),
          ),
          PopupMenuItem(
            value: 'logout',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Text(
                    "Logout",
                    style: TextStyle(color: ktextgrey, fontSize: 13.sp),
                  ),
                ),
                Divider(
                  indent: 10,
                  color: ktextgrey.withOpacity(.0),
                )
              ],
            ),
          ),
          PopupMenuItem(
            padding: const EdgeInsets.all(0),
            value: 'version',
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "v.1.0.0",
                    style: TextStyle(color: ktextgrey, fontSize: 13.sp),
                  ),
                ],
              ),
            ),
          )
        ];
      },
    );
  }
}
