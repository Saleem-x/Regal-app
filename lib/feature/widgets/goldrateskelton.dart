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
      height: 90.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GoldRateShimmerWrap(height: 70.h, width: 90),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GoldRateShimmerWrap(
                    height: 20.h,
                    width: MediaQuery.of(context).size.width / 1.9,
                  ),
                  GoldRateShimmerWrap(
                    height: 25.h,
                    width: MediaQuery.of(context).size.width / 2.4,
                  ),
                  GoldRateShimmerWrap(
                    height: 20.h,
                    width: MediaQuery.of(context).size.width / 2.6,
                  ),
                ],
              )
            ],
          ),
          GoldRateShimmerWrap(
            height: 20.h,
            width: MediaQuery.of(context).size.width / 1.3,
          ),
        ],
      ),
    );
  }
}

class GoldRateShimmerWrap extends StatelessWidget {
  const GoldRateShimmerWrap({
    super.key,
    required this.height,
    required this.width,
  });

  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(),
      width: width,
      child: Shimmer.fromColors(
        baseColor: kcolorgrey.withOpacity(0.1),
        highlightColor: kcolorwhite.withOpacity(0.4),
        child: const Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
