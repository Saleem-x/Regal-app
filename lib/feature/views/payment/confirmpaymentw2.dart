import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class ConfirmPaymentTWO extends StatelessWidget {
  const ConfirmPaymentTWO({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBFBFB),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            FontAwesomeIcons.arrowLeft,
          ),
        ),
        title: Text(
          'Confirm Payment',
          style: TextStyle(
              // fontFamily: kboldfont,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Amount Payable',
              style: TextStyle(
                color: ktextgrey,
                fontSize: 17.sp,
              ),
            ),
            SizedBox(
              width: size.width,
              child: TextFormField(
                keyboardType: TextInputType.number,
                // controller: _payablecontroller,
                style: TextStyle(
                    color: kcolorblack,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD1D1D1),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 208, 206, 206),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'PAYMENT OPTIONS',
              style: TextStyle(
                color: ktextgrey,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: kcolorwhite,
                  radius: 20,
                  child: Image.asset(
                    'assets/images/Google_Pay_Logo.svg.png',
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Google Pay',
                  style: TextStyle(
                    color: kcolorblack,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFD1D1D1),
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: kcolorwhite,
                  radius: 20,
                  child: Image.asset(
                    'assets/images/Paytm_Logo.jpg',
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Paytm',
                  style: TextStyle(
                    color: kcolorblack,
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color(0xFFD1D1D1),
            ),
          ],
        ),
      ),
    );
  }
}
