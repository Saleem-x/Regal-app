import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/state/bloc/instalmenthystory/instalmenthystory_bloc.dart';
import 'package:shimmer/shimmer.dart';

class ViewDetailScreen extends StatelessWidget {
  final SchemeDetailsModel schemedetil;
  final CustomerSchemeModel scheme;
  const ViewDetailScreen(
      {super.key, required this.schemedetil, required this.scheme});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    context.read<InstalmenthystoryBloc>().add(
        GetInstHystory(joinId: scheme.joinId!, schemeNO: scheme.schemeNo!));
    return Scaffold(
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
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      surfaceTintColor: kcolorwhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: kcolorwhite,
                      title: const Text("Fetching Hystory"),
                      content: const Text("No Hystory Available"),
                    ),
                  );
                  Future.delayed(const Duration(seconds: 1), () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  });
                },
              );
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Theme(
                    data: ThemeData(canvasColor: kcolorwhite),
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
                                scheme.schemeNo ?? '',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  // fontFamily: kprimaryfont,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: ktextgrey,
                                ),
                              ),
                              subtitle: Text(
                                '${scheme.schemeName} | ₹${scheme.totalAmount}',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  // fontFamily: kprimaryfont,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: ktextgrey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Started On : ',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                                Text(
                                  '${schemedetil.issueDate}',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Closing On : ',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                                Text(
                                  ' ${schemedetil.closingDate}',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Due Amount : ',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                                Text(
                                  '${scheme.instAmount} ',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Total Paid : ',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                                Text(
                                  ' ${schemedetil.totAmount}',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Current Total Weight : ',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                                Text(
                                  ' ${schemedetil.goldWeight}',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Pending Installents : ',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                                Text(
                                  '${schemedetil.noofInst}',
                                  style: TextStyle(
                                    // fontFamily: kprimaryfont,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: ktextgrey,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.document_scanner_rounded,
                                ),
                                TextButton(
                                  onPressed: () {},
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
                            )
                          : insthystry.isEmpty
                              ? const Center(
                                  child: Text('No Hystory Available'),
                                )
                              : ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: insthystry.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Theme(
                                      data: ThemeData(canvasColor: kcolorwhite),
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
                                              dividerColor: Colors.transparent,
                                            ),
                                            child: ExpansionTile(
                                              collapsedBackgroundColor:
                                                  kcolorwhite,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              backgroundColor: kcolorwhite,
                                              leading: Image.asset(
                                                'assets/images/phone.png',
                                                height: 30.h,
                                              ),
                                              title: Text(
                                                '₹${insthystry[index].credit}',
                                                style: TextStyle(
                                                  // fontFamily: kprimaryfont,
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: ktextgrey,
                                                ),
                                              ),
                                              subtitle: Text(
                                                'Trans. No. : ${insthystry[index].receiptNo ?? 0}',
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
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      insthystry[index]
                                                                  .goldWeight ==
                                                              null
                                                          ? const SizedBox
                                                              .shrink()
                                                          : Text(
                                                              'Weight: ${insthystry[index].goldWeight} gm(s)',
                                                              style: TextStyle(
                                                                // fontFamily:
                                                                // kprimaryfont,
                                                                fontSize: 13.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color:
                                                                    ktextgrey,
                                                              ),
                                                            ),
                                                      insthystry[index]
                                                                  .goldRate ==
                                                              null
                                                          ? const SizedBox
                                                              .shrink()
                                                          : Text(
                                                              'Gold Rate: ₹${double.parse(insthystry[index].goldRate ?? '0.0').abs()}',
                                                              style: TextStyle(
                                                                // fontFamily:
                                                                //     kprimaryfont,
                                                                fontSize: 13.sp,
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
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      insthystry[index]
                                                                  .closingWt ==
                                                              null
                                                          ? const SizedBox
                                                              .shrink()
                                                          : Text(
                                                              'Total Wt: ${insthystry[index].closingWt} gm(s)',
                                                              style: TextStyle(
                                                                // fontFamily:
                                                                //     kprimaryfont,
                                                                fontSize: 13.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color:
                                                                    ktextgrey,
                                                              ),
                                                            ),
                                                      insthystry[index]
                                                                  .totalAmount ==
                                                              null
                                                          ? const SizedBox
                                                              .shrink()
                                                          : Text(
                                                              'Total Amt. : ₹${double.parse(insthystry[index].netAmount!).abs()}',
                                                              style: TextStyle(
                                                                // fontFamily:
                                                                //     kprimaryfont,
                                                                fontSize: 13.sp,
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
        onPressed: () {},
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
      bottomNavigationBar: Padding(
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
    );
  }
}
