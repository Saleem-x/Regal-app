import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';

class ViewDetailScreen extends StatelessWidget {
  final SchemeDetailsModel schemedetil;
  final CustomerSchemeModel scheme;
  const ViewDetailScreen(
      {super.key, required this.schemedetil, required this.scheme});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          'Scheme Detail',
          style: TextStyle(
              fontFamily: kboldfont,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
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
                        contentPadding: const EdgeInsets.all(0),
                        leading: Container(
                          height: 90.h,
                          width: size.width / 6,
                          decoration: BoxDecoration(
                            color: kcolorwhite,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/miscellaneous.png',
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          scheme.schemeNo ?? '',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: kprimaryfont,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500,
                            color: ktextgrey,
                          ),
                        ),
                        subtitle: Text(
                          '${scheme.schemeName} | ₹${scheme.totalAmount}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: kprimaryfont,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: ktextgrey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Started On : ${schemedetil.issueDate}',
                        style: TextStyle(
                          fontFamily: kprimaryfont,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ktextgrey,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Closing On : ${schemedetil.closingDate}',
                        style: TextStyle(
                          fontFamily: kprimaryfont,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ktextgrey,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Due Amount :${scheme.instAmount} ',
                        style: TextStyle(
                          fontFamily: kprimaryfont,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ktextgrey,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Total Paid : ${schemedetil.totAmount}',
                        style: TextStyle(
                          fontFamily: kprimaryfont,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ktextgrey,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Current Total Weight : ${schemedetil.goldWeight}',
                        style: TextStyle(
                          fontFamily: kprimaryfont,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ktextgrey,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Pending Installents : ${schemedetil.noofInst}',
                        style: TextStyle(
                          fontFamily: kprimaryfont,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: ktextgrey,
                        ),
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
                                fontFamily: kprimaryfont,
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
                        fontFamily: kprimaryfont,
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
                          fontFamily: kprimaryfont,
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
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    surfaceTintColor: kcolorwhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: /* ListTile(
                        leading: Image.asset('assets/images/phone.png'),
                        title: Text(
                          '₹1000',
                          style: TextStyle(
                            fontFamily: kprimaryfont,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: ktextgrey,
                          ),
                        ),
                        subtitle: Text(
                          'Trans. No. : 154268',
                          style: TextStyle(
                            fontFamily: kprimaryfont,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: ktextgrey,
                          ),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '18 Apr 2020',
                              style: TextStyle(
                                fontFamily: kprimaryfont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: ktextgrey,
                              ),
                            )
                          ],
                        ),
                      ), */
                          Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          backgroundColor: kcolorwhite,
                          leading: Image.asset(
                            'assets/images/phone.png',
                            height: 30.h,
                          ),
                          title: Text(
                            '₹1000',
                            style: TextStyle(
                              fontFamily: kprimaryfont,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: ktextgrey,
                            ),
                          ),
                          subtitle: Text(
                            'Trans. No. : 154268',
                            style: TextStyle(
                              fontFamily: kprimaryfont,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: ktextgrey,
                            ),
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '18 Apr 2020',
                                style: TextStyle(
                                  fontFamily: kprimaryfont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: ktextgrey,
                                ),
                              )
                            ],
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Weight: .018 gm(s)',
                                    style: TextStyle(
                                      fontFamily: kprimaryfont,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ktextgrey,
                                    ),
                                  ),
                                  Text(
                                    'Gold Rate: 2345',
                                    style: TextStyle(
                                      fontFamily: kprimaryfont,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ktextgrey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total Wt: .117 gm(s)',
                                    style: TextStyle(
                                      fontFamily: kprimaryfont,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ktextgrey,
                                    ),
                                  ),
                                  Text(
                                    'Total Amt. : 100',
                                    style: TextStyle(
                                      fontFamily: kprimaryfont,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: ktextgrey,
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
            ],
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
            fontFamily: kboldfont,
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
                fontFamily: kprimaryfont,
                fontSize: 10.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
