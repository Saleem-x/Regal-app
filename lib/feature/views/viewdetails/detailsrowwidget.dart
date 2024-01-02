import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class DetailsContainerRowWidget extends StatelessWidget {
  const DetailsContainerRowWidget({
    super.key,
    required this.size,
    required this.visible,
    required this.title,
    required this.value,
  });

  final Size size;
  final bool visible;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  // fontFamily: kprimaryfont,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: ktextgrey,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  // fontFamily: kprimaryfont,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: kcolorblack,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

String calculateInstallments(String noOfInst, String paidInst) {
  String inst;
  try {
    logger.e(paidInst);
    if (noOfInst.isEmpty) {
      if (int.parse(paidInst) > 12) {
        inst = paidInst;
      } else {
        inst = (12 - int.parse(paidInst)).toString();
      }
    } else {
      if (int.parse(noOfInst) <= 0) {
        inst = "0";
      } else if (int.parse(paidInst) >= 12) {
        inst = paidInst;
      } else {
        inst = (int.parse(noOfInst) - int.parse(paidInst)).toString();
      }
    }
    logger.e(inst);
    return inst;
  } catch (e) {
    return '0';
  }
}
