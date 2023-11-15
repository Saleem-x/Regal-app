import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/views/termsandpolicies/widgets/widgets/expansiontilewidget.dart';

class AppPrivacyWidget extends StatelessWidget {
  const AppPrivacyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: Row(
              children: [
                Text(
                  'APP PRIVACY POLICY',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: kcolorblack,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              textAlign: TextAlign.start,
              '''Regal Jewellers built the Regal as Akshaya Nidhi Scheme Customer app as a Free app. This SERVICE is provided by Regal Jewellers at no cost and is intended for use as is.

This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.
          
If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.
          
The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Regal as Akshaya Nidhi Scheme unless otherwise defined in this Privacy Policy. For more check Regal as Akshaya Nidhi Scheme Terms and conditions''',
              style: TextStyle(
                fontSize: 10.sp,
              ),
            ),
          ),
          ExpandingInfoTile(datalist: app),
        ],
      ),
    );
  }
}
