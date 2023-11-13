import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';

class ProfileTileWidget extends StatelessWidget {
  final UserBaseModel user;
  const ProfileTileWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0),
      child: Row(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.h),
            ),
            color: kcolorwhite,
            child: Container(
              width: 51.h,
              height: 52.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.h),
                image: const DecorationImage(
                  image: AssetImage('assets/images/Portrait_Placeholder.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(-1, 3),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: SizedBox(
              height: 66.h,
              width: size.width.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    user.cusName,
                    style: TextStyle(
                      fontFamily: kboldfont,
                      fontWeight: FontWeight.w500,
                      fontSize: 22.sp,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    '+91 ${user.cusMobileNumber}',
                    style: TextStyle(
                      fontFamily: kboldfont,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
