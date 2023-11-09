import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'dart:math' as math;

class ExpandingInfoTile extends StatelessWidget {
  const ExpandingInfoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) => Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionWidget(
          initiallyExpanded: false,
          titleBuilder:
              (double animationValue, _, bool isExpaned, toogleFunction) {
            return GestureDetector(
              onTap: () => toogleFunction(animated: true),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: math.pi * animationValue / 2,
                    alignment: Alignment.center,
                    child: Icon(Icons.play_arrow_rounded,
                        size: 30.sp, color: Colors.blueGrey),
                  ),
                  const Expanded(
                    child: Text(
                      'ONLINE PAYMENTS',
                      style: TextStyle(
                          fontFamily: kprimaryfont,
                          fontSize: 12,
                          color: kcolorblack),
                    ),
                  ),
                ],
              ),
            );
          },
          content: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              '''This online payment system is provided by Regal Jewellers. Regal Jewellers may update these terms from time to time and any changes will be effective immediately on being set out here. Please ensure you are aware of the current terms. The country of domicile for Regal Jewellers is India.''',
              style: TextStyle(
                fontFamily: kprimaryfont,
                fontSize: 10.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
