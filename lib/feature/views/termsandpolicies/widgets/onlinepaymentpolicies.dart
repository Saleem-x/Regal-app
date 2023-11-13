import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:regal_app/feature/views/termsandpolicies/widgets/widgets/expansiontilewidget.dart';

bool isexpanded = false;

class OnlinePaymentPolicies extends StatelessWidget {
  const OnlinePaymentPolicies({super.key});

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
                  'ONLINE PAYMENT TERMS AND CONDITIONS',
                  style: TextStyle(
                    fontFamily: kprimaryfont,
                    fontSize: 14.sp,
                    color: kcolorblack,
                  ),
                )
              ],
            ),
          ),
          ExpandingInfoTile(
            datalist: optc,
          )
        ],
      ),
    );
  }
}
