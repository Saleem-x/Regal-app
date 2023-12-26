import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/customer_scheme_model/customer_scheme_model.dart';
import 'package:regal_app/feature/data/models/new_scheme_home_in_model/new_scheme_home_in_model.dart';
import 'package:regal_app/feature/data/models/scheme_details_model/scheme_details_model.dart';
import 'package:regal_app/feature/data/models/scheme_list_model/scheme_list_model.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/bloc/newschemecreate/newschemcreatehome_bloc.dart';
import 'package:regal_app/feature/state/bloc/newschemehome/newschemehome_bloc.dart';
import 'package:regal_app/feature/state/cubit/newschemecheckbox/checkbox_cubit.dart';
import 'package:regal_app/feature/state/cubit/newschemehomeselector/newschemehomeselector_cubit.dart';
import 'package:regal_app/feature/views/joinnewscheme/widgets/newschemedropdownmenu.dart';
import 'package:regal_app/feature/views/payment/confirmpaymentw2.dart';

class NewSchemefrHome extends StatefulWidget {
  final UserBaseModel user;
  const NewSchemefrHome({super.key, required this.user});

  @override
  State<NewSchemefrHome> createState() => _NewSchemefrHomeState();
}

TextEditingController _schemectrl = TextEditingController();
TextEditingController _intamountctrl = TextEditingController();

class _NewSchemefrHomeState extends State<NewSchemefrHome> {
  static final _formkey = GlobalKey<FormState>();
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
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
      ),
      body: BlocConsumer<NewschemcreatehomeBloc, NewschemcreatehomeState>(
        listener: (context, state) {
          state.when(
              newSchemeHomeCreatSuccessState: (newscheme) {
                /*  ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('create scheme success'),
                  ),
                ); */
                Navigator.of(context).pop();
                Future.delayed(const Duration(microseconds: 200), () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmPaymentTWO(
                        schemeDetails: SchemeDetailsModel(
                          goldRate: newscheme.goldRate,
                          goldWeight: "0.00",
                          schemeNo: newscheme.schemeNo,
                          schemeName: newscheme.schemeName,
                          joinId: newscheme.joinId,
                        ),
                        scheme: CustomerSchemeModel(
                          joinId: newscheme.joinId,
                          merchantCode: newscheme.merchantId,
                          subId: newscheme.subCodes,
                          schemeNo: newscheme.schemeNo,
                          schemeName: newscheme.schemeName,
                        ),
                        orderID: '${newscheme.transId!}',
                        payablecontroller: _intamountctrl,
                        user: widget.user,
                        goldWeight: (double.parse(newscheme.instAmt!) /
                                double.parse(newscheme.goldRate!))
                            .toStringAsFixed(2),
                      ),
                    ),
                  );
                });
              },
              newSchemeHomeCreatfailedState: (error) {
                Navigator.of(context).pop();
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: kcolorwhite,
                    title: const Text("Alert"),
                    content: Text(error),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Ok'),
                      )
                    ],
                  ),
                );
              },
              newschcmehomeloadingstate: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return const AlertDialog(
                      surfaceTintColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      content: Center(
                        child: CircularProgressIndicator(
                          color: Colors.green,
                        ),
                      ),
                    );
                  },
                );
              },
              newSchemInitial: () {});
        },
        builder: (context, state) {
          return BlocBuilder<CheckboxCubit, CheckboxState>(
            builder: (context, checkbox) {
              return Form(
                key: _formkey,
                child: BlocConsumer<NewschemehomeBloc, NewschemehomeState>(
                  listener: (context, state) {
                    state.when(
                        getallSchemesState: (schemes, tenure) {
                          // if(schemes)
                        },
                        gettingschemefailed: () {});
                  },
                  builder: (context, state) {
                    return state.when(
                        getallSchemesState: (schemeslist, tenure) => Column(
                              children: [
                                SizedBox(
                                  height: 0.h,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 80, top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Select Scheme',
                                            style: TextStyle(
                                              fontSize: 13.sp,
                                              color:
                                                  kcolordarkred.withOpacity(.7),
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
                                          left: 40, right: 40),
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
                                            child: schemeslist == null
                                                ? SchemeListDropDown(
                                                    schemes: schemeslist ?? [],
                                                    controller: _schemectrl)
                                                : DropdownButtonFormField<
                                                    String>(
                                                    dropdownColor: kcolorwhite,
                                                    items: schemeslist.map(
                                                        (SchemeListModel item) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: item.schemeId
                                                            .toString(),
                                                        child: Text(
                                                          item.schemeName!,
                                                          style: TextStyle(
                                                            fontSize: 13.sp,
                                                            color: ktextgrey,
                                                          ),
                                                        ),
                                                      );
                                                    }).toList(),
                                                    onChanged: (value) {
                                                      _schemectrl.text = value!;
                                                      int idx = schemeslist
                                                          .indexWhere((element) =>
                                                              element
                                                                  .schemeId ==
                                                              value);
                                                      context
                                                          .read<
                                                              NewschemehomeselectorCubit>()
                                                          .selectscheme(
                                                              schemeslist[idx]);

                                                      context
                                                          .read<
                                                              NewschemehomeBloc>()
                                                          .add(
                                                            GetSchemeTenureEvent(
                                                              schemeslist:
                                                                  schemeslist,
                                                            ),
                                                          );
                                                    },
                                                    decoration: InputDecoration(
                                                      // labelText: 'Select an item',
                                                      hintText: 'Select',
                                                      hintStyle:
                                                          const TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  kcolorblack),

                                                      border:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: kcolorblack
                                                              .withOpacity(
                                                            .3,
                                                          ),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: kcolorblack
                                                              .withOpacity(
                                                            .3,
                                                          ),
                                                        ),
                                                      ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: kcolorblack
                                                              .withOpacity(
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
                                  height: 15.h,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 80,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'instalment amount',
                                            style: TextStyle(
                                              fontSize: 13.sp,
                                              color:
                                                  kcolordarkred.withOpacity(.7),
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
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'please enter instalment amount';
                                                } else if (int.parse(value) <
                                                    1000) {
                                                  return 'instalment amount must greater than 1000';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              decoration: InputDecoration(
                                                isDense: true,
                                                border: UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                        kcolorblack.withOpacity(
                                                      .3,
                                                    ),
                                                  ),
                                                ),
                                                disabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                        kcolorblack.withOpacity(
                                                      .3,
                                                    ),
                                                  ),
                                                ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                        kcolorblack.withOpacity(
                                                      .3,
                                                    ),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color:
                                                        kcolorblack.withOpacity(
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
                                BlocBuilder<NewschemehomeselectorCubit,
                                    NewschemehomeselectorState>(
                                  builder: (context, scheme) {
                                    return Column(
                                      children: [
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 80, top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Scheme Details',
                                                style: TextStyle(
                                                  fontSize: 13.sp,
                                                  color: kcolordarkred
                                                      .withOpacity(.7),
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
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 80, vertical: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                tenure == null
                                                    ? ''
                                                    : scheme.scheme == null
                                                        ? ''
                                                        : scheme.scheme!
                                                            .schemeName!,
                                                style: const TextStyle(
                                                    fontSize: 16),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 80, vertical: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Scheme Tenure: ${tenure == null ? '' : tenure[0].tenure}',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ktextgrey
                                                        .withOpacity(.7)),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 80, vertical: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Instalment Amount: ${tenure == null ? '' : "Multiples of 1000"}',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: ktextgrey
                                                        .withOpacity(.7)),
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                value: checkbox.ischecked,
                                                onChanged: (value) {
                                                  context
                                                      .read<CheckboxCubit>()
                                                      .tickCheckBox(value!);
                                                },
                                              ),
                                              Text(
                                                'I have Accepted the',
                                                style: TextStyle(
                                                    color: ktextgrey,
                                                    fontSize: 10.sp),
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'terms & conditions',
                                                  style: TextStyle(
                                                      color: kredbutton
                                                          .withOpacity(.8),
                                                      fontSize: 10.sp),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 40),
                                          child: MaterialButton(
                                            color: checkbox.ischecked == true
                                                ? kredbutton
                                                : kcolorgrey,
                                            minWidth: size.width,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            onPressed: () async {
                                              if (checkbox.ischecked) {
                                                if (_schemectrl.text.isEmpty) {
                                                  await showCupertinoDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return CupertinoAlertDialog(
                                                        title:
                                                            const Text("Alert"),
                                                        content: const Text(
                                                            "Select scheme"),
                                                        actions: <Widget>[
                                                          CupertinoDialogAction(
                                                            child: const Text(
                                                                "OK"),
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                } else {
                                                  if (_formkey.currentState!
                                                      .validate()) {
                                                    showCupertinoDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return CupertinoAlertDialog(
                                                          title: const Text(
                                                              'Alert'),
                                                          content: const Text(
                                                            "Do you want to continue?",
                                                          ),
                                                          actions: <Widget>[
                                                            CupertinoDialogAction(
                                                              child: const Text(
                                                                  "No"),
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                            ),
                                                            CupertinoDialogAction(
                                                              child: const Text(
                                                                  "yes"),
                                                              onPressed: () {
                                                                context
                                                                    .read<
                                                                        NewschemcreatehomeBloc>()
                                                                    .add(
                                                                        const NewschemeADDLoadingEvent());
                                                                context
                                                                    .read<
                                                                        NewschemcreatehomeBloc>()
                                                                    .add(
                                                                      CreateNewSchemeHomeEvent(
                                                                        newschemes:
                                                                            NewSchemeHomeInModel(
                                                                          branchId: widget
                                                                              .user
                                                                              .branchId
                                                                              .toString(),
                                                                          instAmt: _intamountctrl
                                                                              .text
                                                                              .toString(),
                                                                          mobileNo: widget
                                                                              .user
                                                                              .cusMobileNumber
                                                                              .toString(),
                                                                          schemeGroupId: _schemectrl
                                                                              .text
                                                                              .toString(),
                                                                        ),
                                                                      ),
                                                                    );

                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  }
                                                }
                                              } else {
                                                null;
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
                                    );
                                  },
                                )
                              ],
                            ),
                        gettingschemefailed: () {
                          return const Center(
                            child: Text('Something went Wrong'),
                          );
                        });
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    /*   _schemectrl.clear();
    _intamountctrl.clear(); */
    super.dispose();
  }
}
