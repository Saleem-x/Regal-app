import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/bloc/instalmenthystory/instalmenthystory_bloc.dart';
import 'package:regal_app/feature/views/auth/loginscreen.dart';
import 'package:regal_app/feature/views/home/homescreen.dart';
import 'package:regal_app/feature/views/payment/confirmpayment.dart';
import 'package:regal_app/feature/views/viewdetails/detailsrowwidget.dart';
import 'package:regal_app/feature/views/viewdetails/schemtandc.dart';
import 'package:shimmer/shimmer.dart';

class ViewDetailScreen extends StatefulWidget {
  final SchemeDetailsModel schemedetil;
  final CustomerSchemeModel scheme;
  final UserBaseModel user;
  const ViewDetailScreen(
      {super.key,
      required this.schemedetil,
      required this.scheme,
      required this.user});

  @override
  State<ViewDetailScreen> createState() => _ViewDetailScreenState();
}

bool canPop = true;

class _ViewDetailScreenState extends State<ViewDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    context.read<InstalmenthystoryBloc>().add(GetInstHystory(
        joinId: widget.scheme.joinId!, schemeNO: widget.scheme.schemeNo!));
    return PopScope(
      canPop: canPop,
      child: Scaffold(
        backgroundColor: kbgcolor,
        appBar: AppBar(
          backgroundColor: kbgcolor,
          surfaceTintColor: kbgcolor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              FontAwesomeIcons.arrowLeft,
            ),
          ),
          title: Text(
            'Scheme Detail',
            style: TextStyle(
                // fontFamily: kboldfont,
                fontSize: 17.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: BlocConsumer<InstalmenthystoryBloc, InstalmenthystoryState>(
              listener: (context, state) {
                state.when(
                  hystoryLoadigState: () {},
                  getinstalmentHystoryState: (insthystry) async {
                    if (insthystry == null) {}
                  },
                  insthystryFailed: () {
                    canPop = false;
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => AlertDialog(
                        surfaceTintColor: kcolorwhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: kcolorwhite,
                        title: const Text("Fetching History"),
                        content: const Text("No History Available"),
                      ),
                    );
                    Future.delayed(
                      const Duration(seconds: 1),
                      () {
                        canPop = true;
                        Navigator.pop(context);
                        if (widget.user.cusName == null ||
                            widget.user.cusName == '') {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  HomeScreen(user: widget.user),
                            ),
                          );
                        }
                      },
                    );
                  },
                );
              },
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Theme(
                      data: ThemeData(
                        canvasColor: kcolorwhite,
                        cardColor: kcolorwhite,
                        primaryColor: kcolorwhite,
                        colorScheme: const ColorScheme(
                          brightness: Brightness.dark,
                          primary: kcolorwhite,
                          onPrimary: kcolorwhite,
                          secondary: kcolorwhite,
                          onSecondary: kcolorwhite,
                          error: kcolorwhite,
                          onError: kcolorwhite,
                          background: kcolorwhite,
                          onBackground: kcolorwhite,
                          surface: kcolorwhite,
                          onSurface: kcolorwhite,
                        ),
                      ),
                      child: Card(
                        surfaceTintColor: kcolorwhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.all(0),
                                leading: Container(
                                  height: 80.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                    color: kcolorwhite,
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/miscellaneous.png',
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                title: Text(
                                  widget.scheme.schemeNo ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                                subtitle: Text(
                                  widget.scheme.schemeName == null ||
                                          widget.scheme.totalAmount == null
                                      ? widget.scheme.schemeNo!.contains('RG')
                                          ? 'REGALIA'
                                          : ''
                                      : '${widget.scheme.schemeName ?? ''} | ₹${widget.scheme.totalAmount ?? ''}',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: ktextgrey,
                                  ),
                                ),
                              ),
                              DetailsContainerRowWidget(
                                  size: size,
                                  title: 'Started On : ',
                                  value: widget.schemedetil.issueDate ?? '',
                                  visible: widget.schemedetil.issueDate ==
                                              null ||
                                          widget.schemedetil.issueDate!.isEmpty
                                      ? false
                                      : true),
                              DetailsContainerRowWidget(
                                  size: size,
                                  title: 'Closing On : ',
                                  value:
                                      ' ${widget.schemedetil.closingDate ?? ''}',
                                  visible:
                                      widget.schemedetil.closingDate == null ||
                                              widget.schemedetil.closingDate!
                                                  .isEmpty
                                          ? false
                                          : true),
                              DetailsContainerRowWidget(
                                  size: size,
                                  title: 'Due Amount : ',
                                  value:
                                      getdoublevalue(widget.scheme.instAmount),
                                  /* value:
                                      "₹ ${double.parse(widget.scheme.instAmount == null || widget.scheme.instAmount!.isEmpty ? '0.00' : widget.scheme.instAmount!).toStringAsFixed(2)}", */
                                  visible: widget.scheme.instAmount == null ||
                                          widget.scheme.instAmount!.isEmpty
                                      ? false
                                      : true),
                              DetailsContainerRowWidget(
                                  size: size,
                                  title: 'Total Paid : ',
                                  value:
                                      '₹ ${double.parse(widget.schemedetil.totAmount == null || widget.schemedetil.totAmount!.isEmpty ? '0.00' : getdoublevalue(widget.schemedetil.totAmount)).toStringAsFixed(2)} ',
                                  visible: widget.schemedetil.totAmount ==
                                              null ||
                                          widget.schemedetil.totAmount!.isEmpty
                                      ? false
                                      : true),
                              DetailsContainerRowWidget(
                                  size: size,
                                  title: 'Current Total Weight : ',
                                  value:
                                      '${double.parse(widget.schemedetil.goldWeight == null || widget.schemedetil.goldWeight!.isEmpty ? '0.00' : widget.schemedetil.goldWeight!).toStringAsFixed(3)} grams',
                                  visible:
                                      widget.schemedetil.goldWeight == null ||
                                              widget.schemedetil.goldWeight!
                                                  .isEmpty ||
                                              widget.scheme.schemeNo!
                                                  .contains('RG')
                                          ? false
                                          : true),
                              DetailsContainerRowWidget(
                                  size: size,
                                  title: 'Pending Installents : ',
                                  value: widget.scheme.totalNoofInstalment ==
                                              null ||
                                          widget.scheme.totalNoofInstalment!
                                              .isEmpty ||
                                          widget.schemedetil.paidInst == null ||
                                          widget.schemedetil.paidInst!.isEmpty
                                      ? '0'
                                      : calculateInstallments(
                                          widget.scheme.totalNoofInstalment!,
                                          widget.schemedetil.paidInst!),
                                  visible: widget
                                                  .scheme.totalNoofInstalment ==
                                              null ||
                                          widget.scheme.totalNoofInstalment!
                                              .isEmpty ||
                                          widget.schemedetil.paidInst == null ||
                                          widget.schemedetil.paidInst!.isEmpty
                                      ? false
                                      : true),
                              Row(
                                children: [
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      'assets/svg/terms.svg',
                                      height: 15.h,
                                      width: 15.w,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SchemTAndC(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'View Terms & Conditions',
                                      style: TextStyle(
                                        // fontFamily: kprimaryfont,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: kcolordarkred,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Instalment History',
                            style: TextStyle(
                              // fontFamily: kprimaryfont,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: ktextgrey,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              '( Click each item to view details )',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                // fontFamily: kprimaryfont,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: ktextgrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    state.when(
                      hystoryLoadigState: () {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) => SizedBox(
                            height: 70.h,
                            width: size.width - 80,
                            child: Shimmer.fromColors(
                              baseColor: kcolorgrey.withOpacity(0.2),
                              highlightColor: kbgcolor.withOpacity(0.4),
                              child: const Card(),
                            ),
                          ),
                        );
                      },
                      getinstalmentHystoryState: (insthystry) {
                        return insthystry == null
                            ? ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 5,
                                itemBuilder: (context, index) => SizedBox(
                                  height: 70.h,
                                  width: size.width - 80,
                                  child: Shimmer.fromColors(
                                    baseColor: kcolorgrey.withOpacity(0.2),
                                    highlightColor: kbgcolor.withOpacity(0.4),
                                    child: const Card(),
                                  ),
                                ),
                              )
                            : insthystry.isEmpty
                                ? const Center(
                                    child: Text('No Hystory Available'),
                                  )
                                : ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: insthystry.length,
                                    itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Theme(
                                        data: ThemeData(
                                          canvasColor: kcolorwhite,
                                          colorScheme: const ColorScheme(
                                            brightness: Brightness.dark,
                                            primary: kcolorwhite,
                                            onPrimary: kcolorwhite,
                                            secondary: kcolorwhite,
                                            onSecondary: kcolorwhite,
                                            error: kcolorwhite,
                                            onError: kcolorwhite,
                                            background: kcolorwhite,
                                            onBackground: kcolorwhite,
                                            surface: kcolorwhite,
                                            onSurface: kcolorwhite,
                                          ),
                                        ),
                                        child: Card(
                                          surfaceTintColor: kcolorwhite,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Theme(
                                              data: Theme.of(context).copyWith(
                                                dividerColor:
                                                    Colors.transparent,
                                              ),
                                              child: ExpansionTile(
                                                onExpansionChanged: (vv) {
                                                  logger.e(widget
                                                      .schemedetil.goldRate);
                                                },
                                                collapsedBackgroundColor:
                                                    kcolorwhite,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                backgroundColor: kcolorwhite,
                                                leading: Image.asset(
                                                  insthystry[index].empName ==
                                                              null ||
                                                          insthystry[index]
                                                              .empName!
                                                              .isEmpty
                                                      ? 'assets/images/phone.png'
                                                      : 'assets/images/user.png',
                                                  height: 30.h,
                                                ),
                                                title: Text(
                                                  '₹${double.parse(insthystry[index].credit == null || insthystry[index].credit!.isEmpty ? "0.00" : insthystry[index].credit!).toStringAsFixed(2)}',
                                                  style: TextStyle(
                                                    // fontFamily: kprimaryfont,
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: ktextgrey,
                                                  ),
                                                ),
                                                subtitle: Text(
                                                  'Trans. No. : ${insthystry[index].receiptNo ?? "0"}',
                                                  style: TextStyle(
                                                    // fontFamily: kprimaryfont,
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: ktextgrey,
                                                  ),
                                                ),
                                                trailing: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      '${insthystry[index].receiptDate ?? 0}',
                                                      style: TextStyle(
                                                        // fontFamily: kprimaryfont,
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: ktextgrey,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                children: [
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  insthystry[index]
                                                                  .goldWeight !=
                                                              null &&
                                                          insthystry[index]
                                                              .goldWeight!
                                                              .isNotEmpty
                                                      ? Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                horizontal: 10,
                                                                vertical: 5,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Weight: ${double.parse(insthystry[index].goldWeight == null || insthystry[index].goldWeight!.isEmpty ? "0.00" : insthystry[index].goldWeight!)} gm(s)',
                                                                    style:
                                                                        TextStyle(
                                                                      // fontFamily:
                                                                      // kprimaryfont,
                                                                      fontSize:
                                                                          13.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color:
                                                                          ktextgrey,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Gold Rate: ₹${double.parse(insthystry[index].goldRate == null || insthystry[index].goldRate!.isEmpty ? '0.00' : insthystry[index].goldRate!).toStringAsFixed(2)}',
                                                                    style:
                                                                        TextStyle(
                                                                      // fontFamily:
                                                                      //     kprimaryfont,
                                                                      fontSize:
                                                                          13.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color:
                                                                          ktextgrey,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          10,
                                                                      vertical:
                                                                          5),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Total Wt: ${double.parse(insthystry[index].closingWt == null || insthystry[index].closingWt!.isEmpty ? "0.00" : insthystry[index].closingWt!)} gm(s)',
                                                                    style:
                                                                        TextStyle(
                                                                      // fontFamily:
                                                                      //     kprimaryfont,
                                                                      fontSize:
                                                                          13.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color:
                                                                          ktextgrey,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Total Amt. : ₹${double.parse(insthystry[index].netAmount == null || insthystry[index].netAmount!.isEmpty ? "0.00" : insthystry[index].netAmount!).toStringAsFixed(2)}',
                                                                    style:
                                                                        TextStyle(
                                                                      // fontFamily:
                                                                      //     kprimaryfont,
                                                                      fontSize:
                                                                          13.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color:
                                                                          ktextgrey,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      : Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 5),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Total Amt. : ₹${double.parse(insthystry[index].netAmount == null || insthystry[index].netAmount!.isEmpty ? "0.00" : insthystry[index].netAmount!).toStringAsFixed(2)}',
                                                                style:
                                                                    TextStyle(
                                                                  // fontFamily:
                                                                  //     kprimaryfont,
                                                                  fontSize:
                                                                      13.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color:
                                                                      ktextgrey,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                      },
                      insthystryFailed: () {
                        return const SizedBox();
                      },
                    )
                    /* Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '*24 will take to reflect the last payment',
                                  style: TextStyle(
                                    color: kredbutton.withOpacity(.7),
                                    fontFamily: kprimaryfont,
                                    fontSize: 10.sp,
                                  ),
                                )
                              ],
                            ),
                          ) */

                    ,
                    SizedBox(
                      height: 80.h,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        floatingActionButton: MaterialButton(
          color: kredbutton,
          height: 55.h,
          minWidth: 70.w,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ConfirmPaymentScreen(
                  scheme: widget.scheme,
                  schemedetail: widget.schemedetil,
                  user: widget.user,
                  payablecontroller: widget.scheme.instAmount!,
                ),
              ),
            );
          },
          child: Text(
            'Pay',
            style: TextStyle(
              // fontFamily: kboldfont,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: kcolorwhite,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBarTheme(
          data: const BottomNavigationBarThemeData(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '*24 will take to reflect the last payment',
                  style: TextStyle(
                    color: kredbutton.withOpacity(.7),
                    // fontFamily: kprimaryfont,
                    fontSize: 10.sp,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getdoublevalue(String? value) {
    try {
      if (value == null) {
        return "0.00";
      }
      return double.parse(value).toStringAsFixed(2);
    } catch (e) {
      return '0.00';
    }
  }
}
