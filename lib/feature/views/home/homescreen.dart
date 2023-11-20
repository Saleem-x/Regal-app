import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/views/home/widgets/activeschemes.dart';
import 'package:regal_app/feature/views/home/widgets/bottomsection.dart';
import 'package:regal_app/feature/views/home/widgets/goldratewidget.dart';
import 'package:regal_app/feature/views/home/widgets/homepopupmenu.dart';
import 'package:regal_app/feature/views/home/widgets/profiletilewidget.dart';
import 'package:regal_app/feature/views/joinnewscheme/newschemehome.dart';

class HomeScreen extends StatelessWidget {
  final UserBaseModel user;
  const HomeScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kbgcolor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [HomePopupMenu()],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileTileWidget(user: user),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Today's Gold Rate",
                    style: TextStyle(
                      // fontFamily: kprimaryfont,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      color: ktextgrey.withOpacity(
                        .7,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const GoldRateWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Active Schemes",
                    style: TextStyle(
                      // fontFamily: kprimaryfont,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      color: ktextgrey.withOpacity(
                        .7,
                      ),
                    ),
                  ),
                  MaterialButton(
                    color: kgold1,
                    height: 25.h,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    minWidth: 40.w,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewSchemefrHome(),
                          ));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Iconsax.add,
                          size: 17.sp,
                          color: kcolorwhite,
                        ),
                        Text(
                          'Join New Scheme',
                          style: TextStyle(color: kcolorwhite, fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ActiveSchemeWidget(user: user),
            SizedBox(
              height: 10.h,
            ),
            const BottomSectionWidget()
          ],
        ),
      ),
    );
  }
}
