import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:regal_app/feature/views/joinnewscheme/newschemedetail.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/newschemdetailwidget.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/newschemedropdownmenu.dart';

class NewSchemefrHome extends StatefulWidget {
  const NewSchemefrHome({super.key});

  @override
  State<NewSchemefrHome> createState() => _NewSchemefrHomeState();
}

TextEditingController _schemectrl = TextEditingController();

class _NewSchemefrHomeState extends State<NewSchemefrHome> {
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
          'Add New Scheme',
          style: TextStyle(
              fontFamily: kboldfont,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 0.h,
          ),
          NewSchmDropDownWidget(
            controller: _schemectrl,
            title: 'Select Scheme',
            preicon: FontAwesomeIcons.coins,
          ),
          SizedBox(
            height: 15.h,
          ),
          NewSchmFieldWidget(
            title: 'instalment amount',
            icon: FontAwesomeIcons.moneyBill,
            controller: _schemectrl,
            type: TextInputType.name,
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Scheme Details',
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: kcolordarkred.withOpacity(.7),
                      fontFamily: kprimaryfont),
                ),
                const Text(
                  ' *',
                  style: TextStyle(
                      fontSize: 14,
                      color: kcolordarkred,
                      fontFamily: kprimaryfont),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
            child: Row(
              children: [
                Text(
                  'Scheme Tenure:',
                  style: TextStyle(fontFamily: kprimaryfont, fontSize: 13),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
            child: Row(
              children: [
                Text(
                  'Instalment Amount:',
                  style: TextStyle(fontFamily: kprimaryfont, fontSize: 13),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  value: checkvalue,
                  onChanged: (value) {
                    setState(() {
                      checkvalue = !checkvalue;
                    });
                  },
                ),
                Text(
                  'I have Accepted the',
                  style: TextStyle(
                      fontFamily: kprimaryfont,
                      color: ktextgrey,
                      fontSize: 10.sp),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'terms & conditions',
                    style: TextStyle(
                        fontFamily: kprimaryfont,
                        color: kredbutton.withOpacity(.8),
                        fontSize: 10.sp),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: MaterialButton(
              color: kredbutton,
              minWidth: size.width,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onPressed: () {},
              child: const Text(
                'Proceed',
                style: TextStyle(color: kcolorwhite, fontFamily: kprimaryfont),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
