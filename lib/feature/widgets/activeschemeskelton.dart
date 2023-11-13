import 'package:flutter/material.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:shimmer/shimmer.dart';

class ActiveSchemeSkelton extends StatelessWidget {
  const ActiveSchemeSkelton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: size.width / 2,
          height: size.width / 5,
          child: Shimmer.fromColors(
            baseColor: kcolorgrey.withOpacity(0.2),
            highlightColor: kcolorgrey.withOpacity(0.4),
            child: const Card(),
          ),
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        width: 0,
      ),
      itemCount: 3,
    );
  }
}
