import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';

class TandCWidget extends StatelessWidget {
  const TandCWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.play_arrow_rounded,
            size: 30.sp,
            color: Colors.blueGrey,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(
                'If there happens any mistakes or inaccuracies in the passbook, it should be corrected immediately by contacting the management of the concerned regal showroom. No mistakes or inaccuracies are allowed at the time of completion/closure',
                style: TextStyle(
                  fontFamily: kprimaryfont,
                  fontSize: 10.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
