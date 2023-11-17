import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class DocumentSelectorWidget extends StatelessWidget {
  const DocumentSelectorWidget(
      {super.key, required this.title, this.imagedata});

  final String title;
  final XFile? imagedata;

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
            padding: const EdgeInsets.only(left: 40, right: 30),
            child: Row(
              children: [
                SizedBox(
                  child: SvgPicture.asset(
                    'assets/svg/attach.svg',
                    height: 15.h,
                    width: 15.w,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kcolorwhite,
                      ),
                      height: size.height * 0.04,
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              imagedata == null
                                  ? 'Choose File'
                                  : imagedata!.name,
                              style: const TextStyle(),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  imagedata == null ? '' : 'Change',
                                  style: const TextStyle(
                                      color: Color(0xFF990000), fontSize: 10),
                                ),
                                const Icon(
                                  Icons.close,
                                  color: kcolorred,
                                  size: 14,
                                )
                              ],
                            ),
                          ],
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
    );
  }
}
