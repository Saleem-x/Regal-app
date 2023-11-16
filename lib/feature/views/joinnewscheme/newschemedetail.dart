import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/domain/repoimpls/dropdownrepo/dropdownrepo.dart';
import 'package:regal_app/feature/state/bloc/dropsownitems/dropdownitems_bloc.dart';
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
  const JoinNewSchemeDetailScreen({super.key, required this.mobilenumber});
  final String mobilenumber;

  @override
  State<JoinNewSchemeDetailScreen> createState() =>
      _JoinNewSchemeDetailScreenState();
}

final _controller = TextEditingController();
TextEditingController _dobcontroller = TextEditingController();
TextEditingController _mobilecontroller = TextEditingController();
TextEditingController _relationshipcontroller = TextEditingController();
TextEditingController _doctypecontroller = TextEditingController();
TextEditingController _branchcontroller = TextEditingController();
TextEditingController _salesmancontroller = TextEditingController();
TextEditingController _schemecontroller = TextEditingController();
TextEditingController _schmtenurecontroller = TextEditingController();
String otpfield = '';
final _formkey = GlobalKey<FormState>();

class _JoinNewSchemeDetailScreenState extends State<JoinNewSchemeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    context.read<DropdownitemsBloc>().add(const GetAllDropDownEvent());
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<DropdownitemsBloc, DropdownitemsState>(
          builder: (context, state) {
            return state.branches == null ||
                    state.schemeslist == null ||
                    state.documentlist == null ||
                    state.relationshiplist == null ||
                    state.schemetenures == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SingleChildScrollView(
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: size.height > 640 ? 60 : 40),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
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
                            type: TextInputType.name,
                          ),
                          DobSelectorWidget(
                            controller: _dobcontroller,
                          ),
                          const ImageSelectorWidget(),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 80,
                              top: 10,
                            ),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 40, right: 40),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: SvgPicture.asset(
                                    'assets/svg/phoneill2.svg',
                                    height: 15.h,
                                    width: 15.w,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.07,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    controller: _mobilecontroller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'please enter mobile number';
                                      } else if (value.length < 10) {
                                        return 'please enter valid mobile number';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.none,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(10),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    decoration: InputDecoration(
                                      isDense: false,
                                      hintText: widget.mobilenumber,
                                      hintStyle: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: kcolorblack),
                                      prefixIcon: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '+91  ',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: kcolorblack),
                                          ),
                                        ],
                                      ),
                                      border: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFD1D1D1),
                                        ),
                                      ),
                                      disabledBorder:
                                          const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFD1D1D1),
                                        ),
                                      ),
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFD1D1D1),
                                        ),
                                      ),
                                      focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFD1D1D1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                            preicon: 'assets/others/relation.svg',
                            ddWindget: RelationDropDown(
                              relations: state.relationshiplist!,
                              controller: _relationshipcontroller,
                            ),
                          ),
                          NewSchmDropDownWidget(
                            controller: _doctypecontroller,
                            title: 'Document type',
                            preicon: 'assets/svg/terms.svg',
                            ddWindget: DoctypeDropdown(
                                doctypes: state.documentlist!,
                                controller: _doctypecontroller),
                          ),
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
                            controller: _branchcontroller,
                            title: 'Branch',
                            preicon: 'assets/svg/branch.svg',
                            ddWindget: BranchDropDown(
                              branches: state.branches!,
                              controller: _branchcontroller,
                            ),
                          ),
                          NewSchmDropDownWidget(
                            controller: _salesmancontroller,
                            title: 'Sales Man',
                            preicon: 'assets/svg/salesman.svg',
                            ddWindget: SaleSMAnDD(
                              schemes: state.schemeslist!,
                              controller: _salesmancontroller,
                              issalman: true,
                              branchctrl: _branchcontroller,
                            ),
                          ),
                          NewSchmDropDownWidget(
                            controller: _schemecontroller,
                            title: 'Scheme',
                            preicon: 'assets/svg/scheme.svg',
                            ddWindget: SchemeListDropDown(
                              schemes: state.schemeslist!,
                              controller: _schemecontroller,
                            ),
                          ),
                          NewSchmFieldWidget(
                            controller: _controller,
                            icon: 'assets/svg/scheme.svg',
                            title: 'Instalment Amount',
                            type: TextInputType.number,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 5),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 5),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 5),
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Set Pin',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: kredbutton.withOpacity(.9)),
                                )
                              ],
                            ),
                          ),
                          OtpFIeldWidget(size: size),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15),
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
                                  style:
                                      TextStyle(color: ktextgrey, fontSize: 10),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'terms & conditions',
                                    style: TextStyle(
                                        color: kredbutton.withOpacity(.8),
                                        fontSize: 10),
                                  ),
                                )
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
                  );
          },
        ),
      ),
    );
  }
}
