import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/branch_model/branch_model.dart';
import 'package:regal_app/feature/data/models/document_type_model/document_type_model.dart';
import 'package:regal_app/feature/data/models/relation_ship_model/relation_ship_model.dart';
import 'package:regal_app/feature/data/models/sales_man_model/sales_man_model.dart';
import 'package:regal_app/feature/data/models/scheme_list_model/scheme_list_model.dart';
import 'package:regal_app/feature/data/models/scheme_tenure_model/scheme_tenure_model.dart';
import 'package:regal_app/feature/state/bloc/dropsownitems/dropdownitems_bloc.dart';
import 'package:regal_app/feature/state/cubit/checkbranchselected/checkbranchslection_cubit.dart';
import 'package:regal_app/feature/state/cubit/salesman/salesmansearch_cubit.dart';

import '../newschemedetail.dart';

class NewSchmDropDownWidget extends StatelessWidget {
  const NewSchmDropDownWidget({
    super.key,
    required this.controller,
    required this.title,
    required this.preicon,
    required this.ddWindget,
  });

  final TextEditingController controller;
  final String title;
  final String preicon;

  final Widget ddWindget;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: kcolordarkred.withOpacity(.7),
                  ),
                ),
                const Text(
                  ' *',
                  style: TextStyle(
                    fontSize: 13,
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
                    preicon,
                    height: 15.h,
                    width: 15.w,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.07,
                ),
                Expanded(
                  child: ddWindget,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RelationDropDown extends StatelessWidget {
  const RelationDropDown(
      {super.key, required this.relations, required this.controller});

  final List<RelationShipModel> relations;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: kcolorwhite,
      items: relations.map((RelationShipModel item) {
        return DropdownMenuItem<String>(
          value: item.relationId.toString(),
          child: Text(
            item.relationship!,
            style: TextStyle(
              fontSize: 13.sp,
              color: ktextgrey,
            ),
          ),
        );
      }).toList(),
      onChanged: (value) {
        controller.text = value!;
      },
      decoration: InputDecoration(
        // labelText: 'Select an item',
        hintText: 'Select',
        hintStyle:
            const TextStyle(fontWeight: FontWeight.w400, color: kcolorblack),

        border: UnderlineInputBorder(
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
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kcolorblack.withOpacity(
              .3,
            ),
          ),
        ),
      ),
    );
  }
}

class DoctypeDropdown extends StatelessWidget {
  const DoctypeDropdown({
    super.key,
    required this.doctypes,
    required this.controller,
  });

  final List<DocumentTypeModel> doctypes;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: kcolorwhite,
      items: doctypes.map((DocumentTypeModel item) {
        return DropdownMenuItem<String>(
          value: item.docId.toString(),
          child: Text(
            item.docType!,
            style: TextStyle(
              fontSize: 13.sp,
              color: ktextgrey,
            ),
          ),
        );
      }).toList(),
      onChanged: (value) {
        controller.text = value!;
        // print(controller.text);
        context
            .read<CheckbranchslectionCubit>()
            .isdocumentAdhar(value == '1' ? 'ADHAR' : 'Other');
      },
      decoration: InputDecoration(
        // labelText: 'Select an item',
        hintText: 'Select',
        hintStyle:
            const TextStyle(fontWeight: FontWeight.w400, color: kcolorblack),

        border: UnderlineInputBorder(
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
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kcolorblack.withOpacity(
              .3,
            ),
          ),
        ),
      ),
    );
  }
}

class BranchDropDown extends StatelessWidget {
  const BranchDropDown(
      {super.key, required this.branches, required this.controller});

  final List<BranchModel> branches;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: kcolorwhite,
      items: branches.map((BranchModel item) {
        return DropdownMenuItem<String>(
          value: item.branchId.toString(),
          child: Text(
            item.branchName!,
            style: TextStyle(
              fontSize: 13.sp,
              color: ktextgrey,
            ),
          ),
        );
      }).toList(),
      onChanged: (value) {
        controller.text = value!;
        context
            .read<CheckbranchslectionCubit>()
            .checkisselected(controller.text);

        context.read<DropdownitemsBloc>().add(
              GetetsalesmansEvent(branchid: value),
            );
      },
      onSaved: (value) {
        controller.text = value!;
        context
            .read<CheckbranchslectionCubit>()
            .checkisselected(controller.text);

        context.read<DropdownitemsBloc>().add(
              GetetsalesmansEvent(branchid: value),
            );
      },
      decoration: InputDecoration(
        // labelText: 'Select an item',
        hintText: 'Select',
        hintStyle:
            const TextStyle(fontWeight: FontWeight.w400, color: kcolorblack),

        border: UnderlineInputBorder(
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
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kcolorblack.withOpacity(
              .3,
            ),
          ),
        ),
      ),
    );
  }
}

class SchemeListDropDown extends StatelessWidget {
  const SchemeListDropDown(
      {super.key, required this.schemes, required this.controller});

  final List<SchemeListModel> schemes;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      dropdownColor: kcolorwhite,
      items: schemes.map((SchemeListModel item) {
        return DropdownMenuItem<String>(
          value: item.schemeId.toString(),
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
        controller.text = value!;
        context.read<CheckbranchslectionCubit>().isschemeselected(value);
      },
      decoration: InputDecoration(
        // labelText: 'Select an item',
        hintText: 'Select',
        hintStyle:
            const TextStyle(fontWeight: FontWeight.w400, color: kcolorblack),

        border: UnderlineInputBorder(
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
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kcolorblack.withOpacity(
              .3,
            ),
          ),
        ),
      ),
    );
  }
}

class SaleSMAnDD extends StatefulWidget {
  const SaleSMAnDD(
      {super.key,
      required this.salesman,
      required this.controller,
      this.issalman,
      this.branchctrl});

  final List<SalesManModel> salesman;
  final TextEditingController controller;
  final bool? issalman;
  final TextEditingController? branchctrl;

  @override
  State<SaleSMAnDD> createState() => _SaleSMAnDDState();
}

class _SaleSMAnDDState extends State<SaleSMAnDD> {
  TextEditingController salesmannamectrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<SalesmansearchCubit>().searchedlist(widget.salesman, '');
    });
    return BlocBuilder<DropdownitemsBloc, DropdownitemsState>(
      builder: (context, state) {
        if (state.salesmanmodel != null) {
          context
              .read<SalesmansearchCubit>()
              .searchedlist(state.salesmanmodel!, '');
        } /* else if (state.salesmanmodel == null) {
          context.read<DropdownitemsBloc>().add(
                GetetsalesmansEvent(branchid: branchctrl!.text),
              );
        } */
        return /* TextFormField(
          controller:                                                ,
          onTap: () {
            if (widget.salesman.isEmpty) {
              showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: const Text("Alert"),
                    content: const Text("please Selct Branch"),
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
              showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: MediaQuery.of(context).size.width,
                    child: AlertDialog(
                      insetPadding: const EdgeInsets.all(20),
                      backgroundColor: kcolorwhite,
                      surfaceTintColor: kcolorwhite,
                      contentPadding: const EdgeInsets.all(10),
                      titlePadding: const EdgeInsets.all(0),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 3.2,
                              ),
                              Text(
                                'Select salesman',
                                style: TextStyle(fontSize: 13.sp),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  _salesmansearchctrl.clear();
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 16.sp,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: SizedBox(
                              height: 30.h,
                              child: TextFormField(
                                controller: _salesmansearchctrl,
                                onChanged: (query) {
                                  context
                                      .read<SalesmansearchCubit>()
                                      .searchedlist(
                                          state.salesmanmodel!, query);

                                  log(query);
                                },
                                decoration: InputDecoration(
                                  hintText: 'Search here',
                                  hintStyle: TextStyle(fontSize: 14.sp),
                                  prefixIcon: const Icon(Icons.search),
                                  isDense: true,
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kcolorblack.withOpacity(
                                        .3,
                                      ),
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kcolorblack.withOpacity(
                                        .3,
                                      ),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kcolorblack.withOpacity(
                                        .3,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kcolorblack.withOpacity(
                                        .3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      content: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width,
                        child: widget.salesman.isEmpty
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : BlocBuilder<SalesmansearchCubit,
                                SalesmansearchState>(
                                builder: (context, searched) {
                                  return searched.salesmanlist!.isEmpty
                                      ? const Center(
                                          child: Text('Salesman not found'),
                                        )
                                      : ListView.separated(
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                widget.controller.text =
                                                    searched
                                                        .salesmanlist![index]
                                                        .empId!;

                                                salesmannamectrl.text = searched
                                                    .salesmanlist![index]
                                                    .empName!
                                                    .replaceAll('|', "-");
                                                log(widget.controller.text);
                                                Navigator.pop(context);
                                              },
                                              child: Card(
                                                color: kcolorwhite,
                                                surfaceTintColor: kcolorwhite,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Container(
                                                  // height: 20.h,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(searched
                                                        .salesmanlist![index]
                                                        .empName!
                                                        .replaceAll("|", "-")),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                              height: 5.h,
                                            );
                                          },
                                          itemCount:
                                              searched.salesmanlist!.length);
                                },
                              ),
                      ),
                    ),
                  );
                },
              );
            }
          },
          // controller: controller,

          keyboardType: TextInputType.none,
          decoration: InputDecoration(
            isDense: true,
            hintText: 'Select',
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w400, color: kcolorblack),
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
            suffixIcon: IconButton(
              onPressed: () {
                /*  showCupertinoDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: const Text("Alert"),
                      content: const Text(
                        "please Selct Branch",
                      ),
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
                ); */
              },
              icon: Icon(
                Icons.arrow_drop_down,
                size: 20.sp,
              ),
            ),
          ),
        ); */

            GestureDetector(
          onTap: () {
            if (widget.salesman.isEmpty) {
              showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  return CupertinoAlertDialog(
                    title: const Text("Alert"),
                    content: const Text("please Selct Branch"),
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
              showCupertinoDialog(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: MediaQuery.of(context).size.width,
                    child: AlertDialog(
                      insetPadding: const EdgeInsets.all(20),
                      backgroundColor: kcolorwhite,
                      surfaceTintColor: kcolorwhite,
                      contentPadding: const EdgeInsets.all(10),
                      titlePadding: const EdgeInsets.all(0),
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 3.2,
                              ),
                              Text(
                                'Select salesman',
                                style: TextStyle(fontSize: 13.sp),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  _salesmansearchctrl.clear();
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 16.sp,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: SizedBox(
                              height: 30.h,
                              child: TextFormField(
                                controller: _salesmansearchctrl,
                                onChanged: (query) {
                                  context
                                      .read<SalesmansearchCubit>()
                                      .searchedlist(
                                          state.salesmanmodel!, query);

                                  log(query);
                                },
                                decoration: InputDecoration(
                                  hintText: 'Search here',
                                  hintStyle: TextStyle(fontSize: 14.sp),
                                  prefixIcon: const Icon(Icons.search),
                                  isDense: true,
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kcolorblack.withOpacity(
                                        .3,
                                      ),
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kcolorblack.withOpacity(
                                        .3,
                                      ),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kcolorblack.withOpacity(
                                        .3,
                                      ),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: kcolorblack.withOpacity(
                                        .3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      content: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width,
                        child: widget.salesman.isEmpty
                            ? const Center(
                                child: CircularProgressIndicator(),
                              )
                            : BlocBuilder<SalesmansearchCubit,
                                SalesmansearchState>(
                                builder: (context, searched) {
                                  return searched.salesmanlist!.isEmpty
                                      ? const Center(
                                          child: Text('Salesman not found'),
                                        )
                                      : ListView.separated(
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                widget.controller.text =
                                                    searched
                                                        .salesmanlist![index]
                                                        .empId!;
                                                context
                                                    .read<SalesmansearchCubit>()
                                                    .selectsalesman(searched
                                                        .salesmanlist![index]
                                                        .empName!);
                                                salesmannamectrl.text = searched
                                                    .salesmanlist![index]
                                                    .empName!
                                                    .replaceAll('|', "-");
                                                log(widget.controller.text);
                                                Navigator.pop(context);
                                              },
                                              child: Card(
                                                color: kcolorwhite,
                                                surfaceTintColor: kcolorwhite,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Container(
                                                  // height: 20.h,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(searched
                                                        .salesmanlist![index]
                                                        .empName!
                                                        .replaceAll("|", "-")),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                              height: 5.h,
                                            );
                                          },
                                          itemCount:
                                              searched.salesmanlist!.length);
                                },
                              ),
                      ),
                    ),
                  );
                },
              );
            }
          },
          child: Container(
            height: 30.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: kcolorblack.withOpacity(
                    .3,
                  ),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<SalesmansearchCubit, SalesmansearchState>(
                  builder: (context, state) {
                    return Text(
                      salesmannamectrl.text.isEmpty
                          ? "Select"
                          : salesmannamectrl.text,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: kcolorblack,
                          fontSize: 15.sp),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 1),
                  child: Icon(
                    Icons.arrow_drop_down,
                    size: 22.sp,
                    color: kcolorblack.withOpacity(.6),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

TextEditingController _salesmansearchctrl = TextEditingController();

class SchmTEnureDRopDown extends StatelessWidget {
  const SchmTEnureDRopDown(
      {super.key, required this.schemtenure, required this.controller});

  final List<SchemeTenureModel> schemtenure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        showCupertinoModalPopup(
          context: context,
          builder: (context) {
            return Container(
              color: kcolorwhite,
              height: 150,
              child: CupertinoPicker(
                itemExtent: 30,
                onSelectedItemChanged: (value) {
                  controller.text = dropdownItems[value];
                },
                children: List.generate(
                  dropdownItems.length,
                  (index) => Text(
                    dropdownItems[index],
                  ),
                ),
              ),
            );
          },
        );
      },
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'please enter mobile number';
        } else if (value.length < 10) {
          return 'mobile number should be 10';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.none,
      decoration: InputDecoration(
        isDense: true,
        hintText: 'Select',
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
        suffixIcon: IconButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return Container(
                  color: kcolorwhite,
                  height: 150,
                  child: CupertinoPicker(
                    itemExtent: 30,
                    onSelectedItemChanged: (value) {
                      controller.text = dropdownItems[value];
                    },
                    children: List.generate(
                      dropdownItems.length,
                      (index) => Text(
                        dropdownItems[index],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          icon: const Icon(
            Icons.arrow_drop_down,
          ),
        ),
      ),
    );
  }
}
