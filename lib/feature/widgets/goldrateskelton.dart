import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:shimmer/shimmer.dart';

class GoldrateSkelton extends StatelessWidget {
  const GoldrateSkelton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 60.h,
      child: Shimmer.fromColors(
        baseColor: kcolorgrey.withOpacity(0.2),
        highlightColor: kcolorgrey.withOpacity(0.4),
        child: const Card(),
      ),
    );
  }
}
