import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/state/bloc/newschemehome/newschemehome_bloc.dart';
import 'package:regal_app/feature/views/joinnewscheme/newschemedetail.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/newschemedropdownmenu.dart';

class NewSchemefrHome extends StatefulWidget {
  const NewSchemefrHome({super.key});

  @override
  State<NewSchemefrHome> createState() => _NewSchemefrHomeState();
}

TextEditingController _schemectrl = TextEditingController();
TextEditingController _intamountctrl = TextEditingController();
final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

class _NewSchemefrHomeState extends State<NewSchemefrHome> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    context.read<NewschemehomeBloc>().add(const GetAllSchemesfromHomesEvent());
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
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
      ),
      body: Form(
        key: _formkey,
        child: BlocConsumer<NewschemehomeBloc, NewschemehomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.when(
                getallSchemesState: (schemeslist) => Column(
                      children: [
                        SizedBox(
                          height: 0.h,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 80, top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Select Scheme',
                                    style: TextStyle(
                                      fontSize: 13,
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
                              padding:
                                  const EdgeInsets.only(left: 40, right: 40),
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      'assets/svg/schemeopt.svg',
                                      height: 15.h,
                                      width: 15.w,
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.07,
                                  ),
                                  Expanded(
                                    child: SchemeListDropDown(
                                        schemes: schemeslist ?? [],
                                        controller: _schemectrl),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 80,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'instalment amount',
                                    style: TextStyle(
                                      fontSize: 13,
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
                              padding: const EdgeInsets.only(
                                left: 40,
                                right: 40,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      'assets/svg/money.svg',
                                      height: 15.h,
                                      width: 15.w,
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.07,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      controller: _intamountctrl,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'please enter instalment amount';
                                        } else if (int.parse(value) < 1000) {
                                          return 'instalment amount must greater than 1000';
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: kcolorblack.withOpacity(
                                              .3,
                                            ),
                                          ),
                                        ),
                                        disabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: kcolorblack.withOpacity(
                                              .3,
                                            ),
                                          ),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: kcolorblack.withOpacity(
                                              .3,
                                            ),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: kcolorblack.withOpacity(
                                              .3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
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
                        SizedBox(
                          height: 15.h,
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                          child: Row(
                            children: [
                              Text(
                                'Scheme Tenure:',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                          child: Row(
                            children: [
                              Text(
                                'Instalment Amount:',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
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
                                    color: ktextgrey, fontSize: 10.sp),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'terms & conditions',
                                  style: TextStyle(
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
                            onPressed: () async {
                              if (_schemectrl.text.isEmpty) {
                                await showCupertinoDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CupertinoAlertDialog(
                                      title: const Text("Alert"),
                                      content: const Text("Select scheme"),
                                      actions: <Widget>[
                                        CupertinoDialogAction(
                                          child: const Text("OK"),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                if (_formkey.currentState!.validate()) {
                                  logger.i(_schemectrl.text);
                                }
                              }
                            },
                            child: const Text(
                              'Proceed',
                              style: TextStyle(
                                color: kcolorwhite,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                gettingschemefailed: () {
                  return const Center(
                    child: Text('Something went Wrong'),
                  );
                });
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _schemectrl.clear();
    _intamountctrl.clear();
    super.dispose();
  }
}
