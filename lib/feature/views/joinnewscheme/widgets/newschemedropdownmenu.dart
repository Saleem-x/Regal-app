import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/branch_model/branch_model.dart';
import 'package:regal_app/feature/data/models/document_type_model/document_type_model.dart';
import 'package:regal_app/feature/data/models/relation_ship_model/relation_ship_model.dart';
import 'package:regal_app/feature/data/models/scheme_list_model/scheme_list_model.dart';
import 'package:regal_app/feature/data/models/scheme_tenure_model/scheme_tenure_model.dart';
import 'package:regal_app/feature/state/cubit/checkbranchselected/checkbranchslection_cubit.dart';

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
      items: relations.map((RelationShipModel item) {
        return DropdownMenuItem<String>(
          value: item.relationId.toString(),
          child: Text(
            item.relationship!,
            style: TextStyle(
              fontSize: 14.sp,
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
      items: doctypes.map((DocumentTypeModel item) {
        return DropdownMenuItem<String>(
          value: item.docId.toString(),
          child: Text(
            item.docType!,
            style: TextStyle(
              fontSize: 14.sp,
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
      items: branches.map((BranchModel item) {
        return DropdownMenuItem<String>(
          value: item.branchId.toString(),
          child: Text(
            item.branchName!,
            style: TextStyle(
              fontSize: 14.sp,
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
      items: schemes.map((SchemeListModel item) {
        return DropdownMenuItem<String>(
          value: item.schemeId.toString(),
          child: Text(
            item.schemeName!,
            style: TextStyle(
              fontSize: 14.sp,
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

class SaleSMAnDD extends StatelessWidget {
  const SaleSMAnDD(
      {super.key,
      required this.schemes,
      required this.controller,
      this.issalman,
      this.branchctrl});

  final List<SchemeListModel> schemes;
  final TextEditingController controller;
  final bool? issalman;
  final TextEditingController? branchctrl;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      items: schemes.map((SchemeListModel item) {
        return DropdownMenuItem<String>(
          value: item.schemeId.toString(),
          child: Text(
            item.schemeName!,
            style: TextStyle(
              fontSize: 14.sp,
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
