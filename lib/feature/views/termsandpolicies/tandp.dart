import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:regal_app/feature/views/termsandpolicies/widgets/appprivacy.dart';
import 'package:regal_app/feature/views/termsandpolicies/widgets/onlinepaymentpolicies.dart';
import 'package:regal_app/feature/views/termsandpolicies/widgets/widgets/tandc.dart';

class TermsAndPoliciesScreen extends StatelessWidget {
  const TermsAndPoliciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgcolor,
      appBar: AppBar(
        backgroundColor: kbgcolor,
        surfaceTintColor: kbgcolor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
          ),
        ),
        title: Text(
          'Terms & Policy',
          style: TextStyle(
            fontFamily: kboldfont,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const OnlinePaymentPolicies(),
            SizedBox(
              height: 10.h,
            ),
            const AppPrivacyWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                children: [
                  Text(
                    'TERMS AND CONDITIONS',
                    style: TextStyle(
                      fontFamily: kprimaryfont,
                      fontSize: 14.sp,
                      color: kcolorblack,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TandCWidget(),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
