import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/views/auth/widgets/linewidget.dart';
import 'package:regal_app/feature/views/auth/widgets/mobilefield.dart';
import 'package:regal_app/feature/views/auth/widgets/otpfieldwidget.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/dobselecter.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/docselector.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/imageselector.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/newschemdetailwidget.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/newschemedropdownmenu.dart';

List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
bool checkvalue = false;

class JoinNewSchemeDetailScreen extends StatefulWidget {
  const JoinNewSchemeDetailScreen({super.key});

  @override
  State<JoinNewSchemeDetailScreen> createState() =>
      _JoinNewSchemeDetailScreenState();
}

final _controller = TextEditingController();
TextEditingController _dobcontroller = TextEditingController();
TextEditingController _mobilecontroller = TextEditingController();
TextEditingController _relationshipcontroller = TextEditingController();
String otpfield = '';
final _formkey = GlobalKey<FormState>();

class _JoinNewSchemeDetailScreenState extends State<JoinNewSchemeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height > 640 ? 60 : 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/others/regal_logo-optimized.svg',
                      width: size.width / 2,
                      height: size.height * 0.05,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LineWidget(
                      size: size,
                      color2: kcolorblack.withOpacity(.6),
                      color1: kcolorgrey.withOpacity(.0),
                    ),
                    SizedBox(width: size.width * 0.08),
                    const Text(
                      'New Scheme',
                      style: TextStyle(
                          color: kcolordark2,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                    SizedBox(width: size.width * 0.08),
                    LineWidget(
                      size: size,
                      color1: kcolorblack.withOpacity(.6),
                      color2: kcolorgrey.withOpacity(.0),
                    ),
                  ],
                ),
              ),
              NewSchmFieldWidget(
                  controller: _controller,
                  icon: 'assets/others/name.svg',
                  title: 'Name',
                  type: TextInputType.name),
              DobSelectorWidget(
                controller: _dobcontroller,
              ),
              const ImageSelectorWidget(),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                        fontSize: 10,
                        color: kcolordarkred.withOpacity(.7),
                      ),
                    ),
                    const Text(
                      ' *',
                      style: TextStyle(
                        fontSize: 14,
                        color: kcolordarkred,
                      ),
                    ),
                  ],
                ),
              ),
              MobileFieldWidget(
                size: size,
                controller: _mobilecontroller,
              ),
              NewSchmFieldWidget(
                controller: _controller,
                icon: 'assets/svg/mail.svg',
                title: 'EmailID',
                type: TextInputType.emailAddress,
              ),
              NewSchmFieldWidget(
                controller: _controller,
                icon: 'assets/others/name.svg',
                title: 'Nominee Name',
                type: TextInputType.name,
              ),
              NewSchmDropDownWidget(
                  controller: _relationshipcontroller,
                  title: 'Relationship',
                  preicon: 'assets/others/relation.svg'),
              NewSchmDropDownWidget(
                  controller: _relationshipcontroller,
                  title: 'Document type',
                  preicon: 'assets/svg/terms.svg'),
              const DocumentSelectorWidget(
                title: 'Attach document- Front side',
              ),
              const DocumentSelectorWidget(
                title: 'Attach document- Back side',
              ),
              NewSchmFieldWidget(
                controller: _controller,
                icon: 'assets/svg/location.svg',
                title: 'Address',
                type: TextInputType.streetAddress,
              ),
              NewSchmFieldWidget(
                controller: _controller,
                icon: 'assets/svg/location.svg',
                title: 'city',
                type: TextInputType.streetAddress,
              ),
              NewSchmDropDownWidget(
                  controller: _relationshipcontroller,
                  title: 'Branch',
                  preicon: 'assets/svg/branch.svg'),
              NewSchmDropDownWidget(
                  controller: _relationshipcontroller,
                  title: 'Sales Man',
                  preicon: 'assets/svg/salesman.svg'),
              NewSchmDropDownWidget(
                  controller: _relationshipcontroller,
                  title: 'Scheme',
                  preicon: 'assets/svg/scheme.svg'),
              NewSchmFieldWidget(
                controller: _controller,
                icon: 'assets/svg/scheme.svg',
                title: 'Instalment Amount',
                type: TextInputType.number,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Row(
                  children: [
                    Text(
                      'Scheme Details',
                      style: TextStyle(
                        color: kredbutton.withOpacity(.9),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      'Regal Gold Plus',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      'Scheme Tenure',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      'Instalment Amount',
                      style: TextStyle(fontSize: 13),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Row(
                  children: [
                    Text(
                      'Set Pin',
                      style: TextStyle(
                          fontSize: 13, color: kredbutton.withOpacity(.9)),
                    )
                  ],
                ),
              ),
              OtpFIeldWidget(size: size),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
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
                    const Text(
                      'I have Accepted the',
                      style: TextStyle(color: ktextgrey, fontSize: 10),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'terms & conditions',
                          style: TextStyle(
                              color: kredbutton.withOpacity(.8), fontSize: 10),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: MaterialButton(
                  color: ktextgrey.withOpacity(.4),
                  minWidth: size.width,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Proceed',
                    style: TextStyle(
                      color: kcolorwhite,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already Have an Account?',
                    style: TextStyle(),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: kcolorred),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
