import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';

class ProfileTileWidget extends StatelessWidget {
  const ProfileTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Row(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kcolorwhite,
            child: Container(
              width: 50.h,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/bg_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: SizedBox(
              height: 60.h,
              width: size.width.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'SAJANA',
                    style: TextStyle(
                      fontFamily: kboldfont,
                      fontWeight: FontWeight.w500,
                      fontSize: 22.sp,
                    ),
                  ),
                  Text(
                    '+911234567890',
                    style: TextStyle(
                      fontFamily: kboldfont,
                      fontWeight: FontWeight.w400,
                      fontSize: 19.sp,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
