import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/views/home/homescreen.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 162, 66),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 225, 162, 66),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.share,
              color: kcolorwhite,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 2.8,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80.h,
                    width: 60.w,
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/others/iconssvg/tick.svg',
                        fit: BoxFit.cover,
                        height: 60.h,
                        width: 62.w,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Amount',
                      style: TextStyle(
                        // fontFamily: kprimaryfont,
                        color: kcolorwhite.withOpacity(.9),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '₹ 100',
                      style: TextStyle(
                          // fontFamily: kprimaryfont,
                          color: kcolorwhite.withOpacity(.9),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text(
                    'Paid Successfully',
                    style: TextStyle(
                        // fontFamily: kprimaryfont,
                        color: kcolorwhite.withOpacity(.9),
                        fontSize: 15.sp),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: kcolorwhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      30,
                    ),
                    topRight: Radius.circular(
                      30,
                    ),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Reciept',
                              style: TextStyle(
                                color: ktextgrey,
                                // fontFamily: kprimaryfont,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 35.h,
                              height: 35.h,
                              decoration: const BoxDecoration(
                                // borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/miscellaneous.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                /* boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(-1, 3),
                            ),
                          ] */
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'KT123-Ak',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                    Text(
                                      'AKSHAYANIDHI|0.00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Trans.No:542322',
                                style: TextStyle(
                                  color: ktextgrey,
                                ),
                              ),
                              Text(
                                '24 Oct 2023',
                                style: TextStyle(
                                  color: ktextgrey,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Divider(
                            color: ktextgrey.withOpacity(.3),
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Weight:0.02 gm(s)',
                                    style: TextStyle(
                                        color: ktextgrey, fontSize: 12.sp),
                                  ),
                                  Text(
                                    'Gold Rate: ₹5655',
                                    style: TextStyle(
                                        color: ktextgrey, fontSize: 12.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Total Wt:0.117 gm(s)',
                                style: TextStyle(
                                    color: ktextgrey, fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: 25.h,
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.history,
                                    size: 30.sp,
                                  ),
                                ),
                                Text(
                                  'View History',
                                  style: TextStyle(
                                      color: ktextgrey.withOpacity(.5),
                                      fontSize: 10.sp),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            HomeScreen(user: UserBaseModel()),
                                      ),
                                      (route) => false,
                                    );
                                  },
                                  icon: Icon(
                                    CupertinoIcons.forward,
                                    size: 30.sp,
                                  ),
                                ),
                                Text(
                                  'Back to Home',
                                  style: TextStyle(
                                      color: ktextgrey.withOpacity(.5),
                                      fontSize: 10.sp),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
