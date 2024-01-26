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
import 'package:regal_app/feature/views/home/widgets/datecalculator.dart';
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
  final _payablecontroller = TextEditingController();
  final _bottomormkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchemedetailsBloc, SchemedetailsState>(
      builder: (context, state) {
        return state.when(
          schemedetails: (schemedetail, scheme) {
            // log(jsonEncode(schemedetail).toString());
            if (scheme != null) {
              Future.delayed(const Duration(microseconds: 100), () {
                _payablecontroller.text =
                    double.parse(scheme.instAmount ?? '0').toStringAsFixed(0);
                // log('${scheme.instAmount}');
              });
            }
            return schemedetail == null || scheme == null
                ? const HomeBottoShimmer()
                : ColoredBox(
                    color: kbgcolor,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height / 2,
                      decoration: const BoxDecoration(
                        color: kcolorwhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            60,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 30, right: 30, top: 30, bottom: 5.sp),
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
                                      'Total Paid: ₹ ${double.parse(schemedetail.totAmount ?? '0.00').toStringAsFixed(2)}',
                                      style: TextStyle(
                                        color: ktextgrey,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
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
                                              color: ktextgrey,
                                              fontSize: 12.sp),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Payable Amount',
                                        style: TextStyle(color: ktextgrey),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
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
                                              border:
                                                  const UnderlineInputBorder(
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
                                    bool isdued =
                                        checkdateisvailid(schemedetail.dueDate);

                                    if (_bottomormkey.currentState!
                                        .validate()) {
                                      if (isdued == true) {
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
                                      } else {
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            backgroundColor: kcolorwhite,
                                            surfaceTintColor: kcolorwhite,
                                            title: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Oops!',
                                                  style: TextStyle(
                                                      color: kcolorblack,
                                                      fontSize: 17.sp,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                            content: Text(
                                              textAlign: TextAlign.center,
                                              '''Unfortunately, you do not meet the eligibility criteria for the selected scheme benefits. We kindly suggest contacting the nearest Regal store for assistance in either concluding the current scheme or initiating a new one through the app.\n Thank you for your understanding.''',
                                              style: TextStyle(
                                                  color: ktextgrey,
                                                  fontSize: 14.sp),
                                            ),
                                            actions: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  MaterialButton(
                                                    minWidth: 55.w,
                                                    height: 35.h,
                                                    color: kredbutton,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.sp),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      'Close',
                                                      style: TextStyle(
                                                          color: kcolorwhite,
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        );
                                      }
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
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 0),
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
                                            vertical: 5),
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
                    ),
                  );
          },
        );
      },
    );
  }
}

class HomeBottoShimmer extends StatelessWidget {
  const HomeBottoShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: kbgcolor,
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: MediaQuery.of(context).size.width,
        // height: 300.h,
        decoration: const BoxDecoration(
          color: kcolorwhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              60,
            ),
          ),
        ),
        /* child: Shimmer.fromColors(
            baseColor: kcolorgrey.withOpacity(0.2),
            highlightColor: kbgcolor.withOpacity(0.4),
            child: const Card(),
          ), */

        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10.sp),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ShimmerWidgetWrapper(
                            height: 25.h,
                            width: MediaQuery.of(context).size.width / 2.2,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          ShimmerWidgetWrapper(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 1.9,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          ShimmerWidgetWrapper(
                            height: 25,
                            width: MediaQuery.of(context).size.width / 2.4,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          ShimmerWidgetWrapper(
                            height: 25,
                            width: MediaQuery.of(context).size.width / 1.9,
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ShimmerWidgetWrapper(
                        height: 50.h,
                        width: 70.w,
                      )
                    ],
                  ),
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
                  Column(
                    children: [
                      Row(
                        children: [
                          ShimmerWidgetWrapper(
                            height: 20.h,
                            width: MediaQuery.of(context).size.width / 1.9,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          ShimmerWidgetWrapper(
                            height: 40.h,
                            width: MediaQuery.of(context).size.width / 1.9,
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ShimmerWidgetWrapper(
                        height: 50.h,
                        width: 70.w,
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  ShimmerWidgetWrapper(
                    height: 25.h,
                    width: MediaQuery.of(context).size.width / 1.3,
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShimmerWidgetWrapper extends StatelessWidget {
  const ShimmerWidgetWrapper({
    super.key,
    required this.height,
    required this.width,
  });

  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        color: kcolorwhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            60,
          ),
        ),
      ),
      width: width,
      child: Shimmer.fromColors(
        baseColor: kcolorgrey.withOpacity(0.1),
        highlightColor: kcolorwhite.withOpacity(0.4),
        child: const Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
