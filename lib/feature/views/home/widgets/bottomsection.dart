import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';

class BottomSectionWidget extends StatelessWidget {
  const BottomSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      // height: size.,
      decoration: const BoxDecoration(
        color: kcolorwhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            60,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Instalment amount',
                      style: TextStyle(
                        fontFamily: kprimaryfont,
                        color: ktextgrey,
                        fontSize: 12.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '₹ 2500.00',
                        style: TextStyle(
                            fontFamily: kboldfont,
                            color: kcolorblack,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    // SizedBox(
                    //   height: 6.h,
                    // ),
                    Text(
                      'Total Paid:',
                      style: TextStyle(
                        fontFamily: kprimaryfont,
                        color: ktextgrey,
                        fontSize: 14.sp,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'Due Date:',
                        style: TextStyle(
                          fontFamily: kprimaryfont,
                          color: ktextgrey,
                          fontSize: 14.sp,
                        ),
                      ),
                    )
                  ],
                ),
                const Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.arrowRight,
                      color: ktextgrey,
                    ),
                    Text(
                      'View Details',
                      style:
                          TextStyle(fontFamily: kprimaryfont, color: ktextgrey),
                    )
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: DottedLine(
                dashColor: ktextgrey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Payable Amount',
                        style: TextStyle(
                            fontFamily: kprimaryfont, color: ktextgrey),
                      ),
                      SizedBox(
                        width: size.width / 2,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          // controller: _payablecontroller,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: ktextgrey,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: ktextgrey,
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: size.height * 0.03,
                  height: size.height * 0.05,
                  color: kredbutton,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Pay',
                    style:
                        TextStyle(fontFamily: kprimaryfont, color: kcolorwhite),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Enter an amount greater than or equal to the Instalment amount',
                    style: TextStyle(
                      fontFamily: kprimaryfont,
                      color: ktextgrey,
                      fontSize: 8.sp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(
                        'assets/others/regal_logo-optimized.svg',
                        width: 200.w,
                        height: 13.h,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9),
                        child: Text(
                          'A Regal Jewellery Initiative',
                          style: TextStyle(
                              fontFamily: kprimaryfont,
                              color: ktextgrey.withOpacity(.3),
                              fontSize: 8.sp),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
