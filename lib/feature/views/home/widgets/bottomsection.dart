import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/bloc/instalmenthystory/instalmenthystory_bloc.dart';
import 'package:regal_app/feature/state/bloc/schemedetails/schemedetails_bloc.dart';
import 'package:regal_app/feature/views/payment/confirmpayment.dart';
import 'package:regal_app/feature/views/viewdetails/viewdetailscreen.dart';
import 'package:shimmer/shimmer.dart';

class BottomSectionWidget extends StatefulWidget {
  final UserBaseModel user;
  const BottomSectionWidget({super.key, required this.user});

  @override
  State<BottomSectionWidget> createState() => _BottomSectionWidgetState();
}

class _BottomSectionWidgetState extends State<BottomSectionWidget> {
  static final _payablecontroller = TextEditingController();
  final _bottomormkey = GlobalKey<FormState>();

  @override
  void dispose() {
    // _payablecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocBuilder<SchemedetailsBloc, SchemedetailsState>(
      builder: (context, state) {
        return state.when(
          schemedetails: (schemedetail, scheme) {
            if (scheme != null) {
              _payablecontroller.text =
                  double.parse(scheme.instAmount!).toStringAsFixed(0);
            }
            return schemedetail == null || scheme == null
                ? Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: size.width,
                    height: 300.h,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          60,
                        ),
                      ),
                    ),
                    child: Shimmer.fromColors(
                      baseColor: kcolorgrey.withOpacity(0.2),
                      highlightColor: kbgcolor.withOpacity(0.4),
                      child: const Card(),
                    ),
                  )
                : Container(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Instalment amount',
                                    style: TextStyle(
                                      color: ktextgrey,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      '₹${scheme.instAmount}',
                                      style: TextStyle(
                                        color: kcolorblack,
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: 6.h,
                                  // ),
                                  Text(
                                    'Total Paid: ₹ ${schemedetail.totAmount}',
                                    style: TextStyle(
                                      color: ktextgrey,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      'Due Date: ${schemedetail.dueDate}',
                                      style: TextStyle(
                                        color: ktextgrey,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              InkWell(
                                splashFactory: InkSplash.splashFactory,
                                onTap: () {
                                  context
                                      .read<InstalmenthystoryBloc>()
                                      .add(const ResetDataEvent());
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ViewDetailScreen(
                                        scheme: scheme,
                                        schemedetil: schemedetail,
                                        user: widget.user,
                                      ),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  child: Column(
                                    children: [
                                      /* Icon(
                                        FontAwesomeIcons.arrowRight,
                                        color: ktextgrey,
                                        size: 30.sp,
                                      ), */
                                      SvgPicture.asset(
                                        'assets/others/right_arrow.svg',
                                        height: 17.h,
                                        width: 17.w,
                                        // ignore: deprecated_member_use
                                        color: ktextgrey,
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        'View Details',
                                        style: TextStyle(
                                            color: ktextgrey, fontSize: 12.sp),
                                      )
                                    ],
                                  ),
                                ),
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
                            crossAxisAlignment: CrossAxisAlignment.end,
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
                                      width: size.width / 2,
                                      child: Form(
                                        key: _bottomormkey,
                                        child: TextFormField(
                                          enabled:
                                              scheme.schemeNo!.contains('RG')
                                                  ? false
                                                  : true,
                                          keyboardType: TextInputType.number,
                                          inputFormatters: [
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter amount';
                                            } else if (double.parse(value) <
                                                double.parse(
                                                    scheme.instAmount!)) {
                                              return 'Amount is not applicable';
                                            } else {
                                              return null;
                                            }
                                          },
                                          controller: _payablecontroller,
                                          style: TextStyle(
                                              color: kcolorblack,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w600),
                                          decoration: InputDecoration(
                                            hintText: 'Enter Amount',
                                            hintStyle: TextStyle(
                                                color: kcolorgrey,
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.w600),
                                            border: const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ktextgrey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ktextgrey,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              MaterialButton(
                                minWidth: 55.w,
                                height: 45.h,
                                color: kredbutton,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.sp),
                                ),
                                onPressed: () async {
                                  if (_bottomormkey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ConfirmPaymentScreen(
                                          scheme: scheme,
                                          schemedetail: schemedetail,
                                          user: widget.user,
                                          payablecontroller:
                                              _payablecontroller.text,
                                        ),
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  'Pay',
                                  style: TextStyle(
                                      color: kcolorwhite,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600),
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
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 9),
                                      child: Text(
                                        'A Regal Jewellery Initiative',
                                        style: TextStyle(
                                          color: ktextgrey.withOpacity(.3),
                                          fontSize: 8.sp,
                                        ),
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
          },
        );
      },
    );
  }
}
