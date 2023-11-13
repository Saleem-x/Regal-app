import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoldRateWidget extends StatelessWidget {
  const GoldRateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              /* SvgPicture.asset(
                'assets/others/gr.svg',
                height: 60.h,
              ), */
              Image.asset(
                'assets/images/GoldRate.png',
                height: 60.h,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 60.h,
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Last Change 16 May 2020 | 12.30 PM',
                              style: TextStyle(
                                fontFamily: kboldfont,
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp,
                                color: ktextgrey.withOpacity(.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '₹ 4,350.00  ',
                            style: TextStyle(
                                fontFamily: kboldfont,
                                fontWeight: FontWeight.w600,
                                fontSize: 18.sp),
                          ),
                          Text(
                            '(1 gram) ',
                            style: TextStyle(
                                fontFamily: kboldfont,
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: ktextgrey.withOpacity(.6)),
                          ),
                        ],
                      ),
                      Text(
                        '₹34,800.00 ( 8 grams )',
                        style: TextStyle(
                            fontFamily: kboldfont,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: ktextgrey.withOpacity(.6)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Gold rate shown in Thrissur is shown here. It may be varies with your region',
            style: TextStyle(
              fontFamily: kboldfont,
              fontWeight: FontWeight.w400,
              fontSize: 8.sp,
              color: ktextgrey.withOpacity(.6),
            ),
          )
        ],
      ),
    );
  }
}
