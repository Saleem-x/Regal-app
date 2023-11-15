import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class ImageSelectorWidget extends StatelessWidget {
  const ImageSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80, top: 20, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Attach your Photo',
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
              const SizedBox(
                child: Icon(
                  Iconsax.camera,
                  size: 20,
                ),
              ),
              SizedBox(
                width: size.width * 0.07,
              ),
              Container(
                height: size.height * 0.07,
                width: size.height * 0.07,
                decoration: BoxDecoration(
                  color: kcolorwhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  'assets/others/iconssvg/addimage.svg',
                  height: size.height * 0.07,
                  width: size.height * 0.07,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
