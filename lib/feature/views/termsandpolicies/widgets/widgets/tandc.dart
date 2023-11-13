import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:regal_app/feature/views/termsandpolicies/widgets/widgets/expansiontilewidget.dart';

class TandCWidget extends StatelessWidget {
  const TandCWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: tandc.length,
      itemBuilder: (context, index) => Row(
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
                tandc[index],
                style: TextStyle(
                  fontFamily: kprimaryfont,
                  fontSize: 10.sp,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
