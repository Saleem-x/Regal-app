import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/cubit/getgoldweight/getgoldweight_cubit.dart';
import 'package:regal_app/feature/views/payment/confirmpaymentw2.dart';

class ConfirmPaymentScreen extends StatefulWidget {
  final CustomerSchemeModel scheme;
  final SchemeDetailsModel schemedetail;
  final UserBaseModel user;
  final String payablecontroller;
  const ConfirmPaymentScreen(
      {super.key,
      required this.scheme,
      required this.schemedetail,
      required this.user,
      required this.payablecontroller});

  @override
  State<ConfirmPaymentScreen> createState() => _ConfirmPaymentScreenState();
}

final TextEditingController _payablecontroller = TextEditingController();

class _ConfirmPaymentScreenState extends State<ConfirmPaymentScreen> {
  @override
  void initState() {
    _payablecontroller.text = widget.payablecontroller;
    if (widget.schemedetail.goldRate != null) {
      context.read<GetgoldweightCubit>().getgoldweight(
          double.parse(_payablecontroller.text), widget.schemedetail.goldRate!);
    }
    super.initState();
  }

  static final _formkey = GlobalKey<FormState>();

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
      body: Form(
        key: _formkey,
        child: BlocBuilder<GetgoldweightCubit, GetgoldweightState>(
          builder: (context, state) {
            return Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
                          /*boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(-1, 3),
                                  ),
                                ]*/
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
                                '${widget.scheme.schemeName ?? (widget.scheme.schemeNo!.contains('RG') ? 'REGALIA' : '')} | ₹${double.parse(widget.scheme.totalAmount ?? '0.0').abs()}',
                                style: TextStyle(
                                  // fontFamily: kboldfont,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                              Text(
                                '${widget.scheme.custName?.toUpperCase() ?? widget.user.cusName ?? ''}',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  // fontFamily: kprimaryfont,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: ktextgrey,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Divider(
                    color: ktextgrey.withOpacity(.3),
                  ),
                ),
                widget.schemedetail.goldWeight == null ||
                        widget.schemedetail.goldWeight!.isEmpty ||
                        widget.schemedetail.goldRate == null ||
                        double.parse(widget.schemedetail.goldWeight!) <= .000
                    ? const SizedBox.shrink()
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
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
                                  '₹${widget.scheme.goldRate}',
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Instalment Amount',
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
                            '₹${widget.scheme.instAmount ?? ''}',
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                                controller: _payablecontroller.text.isEmpty
                                    ? TextEditingController(
                                        text: widget.scheme.instAmount)
                                    : _payablecontroller,
                                onChanged: (value) {
                                  if (widget.schemedetail.goldRate != null) {
                                    logger.e(widget.schemedetail.goldRate);
                                    context
                                        .read<GetgoldweightCubit>()
                                        .getgoldweight(
                                            double.parse(
                                                value.isEmpty ? '0' : value),
                                            widget.schemedetail.goldRate!);
                                  }
                                },
                                enabled: widget.scheme.schemeNo!.contains('RG')
                                    ? false
                                    : true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter amount';
                                  } else if (double.parse(value) <
                                      double.parse(widget.scheme.instAmount!)) {
                                    return 'Amount is not applicable';
                                  } else {
                                    return null;
                                  }
                                },
                                style: TextStyle(
                                    color: kcolorblack,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600),
                                decoration: InputDecoration(
                                    hintText: 'Enter Amount',
                                    hintStyle: TextStyle(
                                      color: kcolorgrey,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    border: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: ktextgrey,
                                      ),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
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
                                  /* '${double.parse(widget.schemedetail.goldWeight!)}', */

                                  '${state.weight} gm(s)',
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
                    onPressed: () async {
                      if (_formkey.currentState!.validate()) {
                        String orderID =
                            generateOrderID('Login', widget.user.cusId!);
                        // await PaymentHystoryRepo().getpaymenthystory(
                        //   PaymentHystoryInModel(
                        //       datakey: datakey,
                        //       cusId: widget.user.cusId,
                        //       orderId: orderID,
                        //       joinId: widget.schemedetail.joinId,
                        //       payMode: 'opt_upi',
                        //       schemeNo: widget.scheme.schemeNo,
                        //       payType: 'opt_upi',
                        //       payableAmt: '1',
                        //       insAmount: widget.scheme.instAmount,
                        //       goldRate: widget.schemedetail.goldRate,
                        //       cumlWgt: '0',
                        //       subCode: widget.scheme.subId),
                        // );
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmPaymentTWO(
                              isNewScheme: false,
                              schemeDetails: widget.schemedetail,
                              scheme: widget.scheme,
                              orderID: orderID,
                              payablecontroller: _payablecontroller,
                              user: widget.user,
                              goldWeight: state.weight ?? '0.00',
                            ),
                          ),
                        );
                      }
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
            );
          },
        ),
      ),
    );
  }

  String generateOrderID(String intentFlag, String cusID) {
    int cusID1 = 0;
    String orderID;

    if (intentFlag == 'SIGNUP') {
      cusID1 = int.parse(cusID);
      orderID = '$cusID1' '1'.toString();
    } else {
      logger.e(1);
      cusID1 = int.parse(widget.user.cusId!);
      logger.e(2);
      int seq = widget.user.orderSeq + 1.toInt();
      logger.e(3);
      orderID = '$cusID1$seq'.toString();
      logger.e(4);
      widget.user.orderSeq = seq;
    }

    DateTime currentDateAndTime = DateTime.now();
    int timeStamp = currentDateAndTime.microsecondsSinceEpoch;

    orderID = '$cusID1$timeStamp';

    logger.e(orderID);
    return orderID;
  }
}
