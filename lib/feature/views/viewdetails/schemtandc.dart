import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class SchemTAndC extends StatelessWidget {
  const SchemTAndC({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Terms And Conditions',
          style: TextStyle(
              // fontFamily: kboldfont,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: schemetandc.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      size: 30.sp,
                      color: Colors.blueGrey,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(
                          schemetandc[index],
                          style: TextStyle(
                            // fontFamily: kprimaryfont,
                            fontSize: 10.sp,
                            color: ktextgrey.withOpacity(
                              .7,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> schemetandc = [
  '''The duration of the Regalia Scheme will be 11 months.''',
  '''Those who complete the 11-month installment without fail will only be eligible for the gold purchase with zero making charges.''',
  '''As per this scheme, all gold jewelry, except for Diamonds, Uncut, and Precious stones collections, will be redeemable free of charge upon maturity of the scheme.''',
  '''If the scheme is closed before maturity, the making charge shall be applicable as per the terms of the scheme.''',
  '''As per the terms of this scheme, it is not permissible to pay an amount greater or lesser than the fixed monthly installments.''',
];
