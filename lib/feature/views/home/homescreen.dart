import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:regal_app/feature/views/home/widgets/activeschemes.dart';
import 'package:regal_app/feature/views/home/widgets/bottomsection.dart';
import 'package:regal_app/feature/views/home/widgets/goldratewidget.dart';
import 'package:regal_app/feature/views/home/widgets/homepopupmenu.dart';
import 'package:regal_app/feature/views/home/widgets/profiletilewidget.dart';
import 'package:regal_app/feature/views/joinnewscheme/newschemehome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kscafbg.withOpacity(1),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(300),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Row(
              children: [HomePopupMenu()],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileTileWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: [
                  Text(
                    "Today's Gold Rate",
                    style: TextStyle(
                      fontFamily: kprimaryfont,
                      fontWeight: FontWeight.w500,
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
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Active Schemes",
                    style: TextStyle(
                      fontFamily: kprimaryfont,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
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
            const ActiveSchemeWidget(),
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
