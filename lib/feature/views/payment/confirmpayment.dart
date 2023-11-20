import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/views/payment/confirmpaymentw2.dart';

class ConfirmPaymentScreen extends StatefulWidget {
  final CustomerSchemeModel scheme;
  final SchemeDetailsModel schemedetail;
  const ConfirmPaymentScreen(
      {super.key, required this.scheme, required this.schemedetail});

  @override
  State<ConfirmPaymentScreen> createState() => _ConfirmPaymentScreenState();
}

final TextEditingController _payablecontroller = TextEditingController();

class _ConfirmPaymentScreenState extends State<ConfirmPaymentScreen> {
  @override
  void initState() {
    _payablecontroller.text = widget.scheme.instAmount!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kbgcolor,
      appBar: AppBar(
        backgroundColor: kbgcolor,
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              children: [
                Container(
                  width: 37.h,
                  height: 37.h,
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
                          widget.scheme.schemeNo!,
                          style: TextStyle(
                            // fontFamily: kboldfont,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                          ),
                        ),
                        Text(
                          '${widget.scheme.schemeName!} | ₹${double.parse(widget.scheme.totalAmount!).abs()}',
                          style: TextStyle(
                            // fontFamily: kboldfont,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Divider(
              color: ktextgrey.withOpacity(.3),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gold Rate',
                      style: TextStyle(
                        color: ktextgrey,
                        // fontFamily: kprimaryfont,
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '₹${widget.schemedetail.goldRate!}',
                      style: TextStyle(
                        color: kcolorblack,
                        // fontFamily: kprimaryfont,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'instalment Amount',
                      style: TextStyle(
                        color: ktextgrey,
                        // fontFamily: kprimaryfont,
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      '₹${widget.scheme.instAmount!}',
                      style: TextStyle(
                        color: kcolorblack,
                        // fontFamily: kprimaryfont,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Payable Amount',
                        style: TextStyle(color: ktextgrey),
                      ),
                      SizedBox(
                        width: size.width,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: _payablecontroller,
                          style: TextStyle(
                              color: kcolorblack,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
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
              ],
            ),
          ),
          widget.schemedetail.goldWeight == null ||
                  widget.schemedetail.goldWeight!.isEmpty ||
                  double.parse(widget.schemedetail.goldWeight!) <= .000
              ? const SizedBox.shrink()
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current Weight',
                            style: TextStyle(
                              color: ktextgrey,
                              // fontFamily: kprimaryfont,
                              fontSize: 13.sp,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            widget.schemedetail.goldWeight!,
                            style: TextStyle(
                              color: kcolorblack,
                              // fontFamily: kprimaryfont,/
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                const Icon(
                  Iconsax.shield_tick,
                  color: Colors.green,
                ),
                Text(
                  'Safe And Secure Payments',
                  style: TextStyle(
                    color: ktextgrey.withOpacity(.3),
                    // fontFamily: kprimaryfont,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 10,
            ),
            child: MaterialButton(
              color: kredbutton,
              height: 35.h,
              minWidth: size.width.w,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConfirmPaymentTWO(),
                    ));
              },
              child: Text(
                'Proceed to Pay',
                style: TextStyle(
                  color: kcolorwhite,
                  // fontFamily: kprimaryfont,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
