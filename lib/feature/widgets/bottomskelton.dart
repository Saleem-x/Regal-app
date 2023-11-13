import 'package:flutter/material.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:shimmer/shimmer.dart';

class BottomSkeltonWidget extends StatelessWidget {
  const BottomSkeltonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      surfaceTintColor: kbgcolor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            80,
          ),
        ),
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              80,
            ),
          ),
        ),
        width: size.width,
        height: size.width,
        child: ClipRRect(
          child: SizedBox.fromSize(
            size: size,
            child: Shimmer.fromColors(
              baseColor: kcolorgrey.withOpacity(0.2),
              highlightColor: kbgcolor.withOpacity(0.4),
              child: const Card(),
            ),
          ),
        ),
      ),
    );
  }
}
