import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:shimmer/shimmer.dart';

class ActiveSchemeWidget extends StatelessWidget {
  const ActiveSchemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 120.w,
      // width: size.width.w,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 230.w,
                  decoration: BoxDecoration(
                    color: kcolorwhite,
                    gradient: LinearGradient(
                        colors: 0 == index
                            ? [kgold1, kgold2]
                            : [kcolorwhite, kcolorwhite],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/others/scheme.svg',
                            height: 18.h,
                            width: 15.w,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '35612 - AK',
                            style: TextStyle(
                                fontFamily: kprimaryfont,
                                fontSize: 20.sp,
                                color: 0 == index ? kcolorwhite : ktextgrey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            'Akshayanidhi | ₹ 30000.00',
                            style: TextStyle(
                                fontFamily: kprimaryfont,
                                fontSize: 12.sp,
                                color: 0 == index ? kcolorwhite : ktextgrey,
                                fontWeight: FontWeight.w500),
                          ),
                        ]),
                  ),
                ),
              )),
          separatorBuilder: (context, index) => const SizedBox(
                width: 0,
              ),
          itemCount: 3),
    );
  }
}

class SchemesShimmer extends StatelessWidget {
  const SchemesShimmer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: size.width / 2.w,
                height: size.width / 5.h,
                child: Shimmer.fromColors(
                  baseColor: kcolorgrey.withOpacity(0.2),
                  highlightColor: kcolorgrey.withOpacity(0.4),
                  child: const Card(),
                ),
              ),
            ),
        separatorBuilder: (context, index) => const SizedBox(
              width: 0,
            ),
        itemCount: 3);
  }
}
