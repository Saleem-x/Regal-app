import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/state/cubit/pickimage/pickimage_cubit.dart';

class ImageSelectorWidget extends StatelessWidget {
  const ImageSelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocBuilder<PickimageCubit, PickimageState>(
      builder: (context, state) {
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
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                children: [
                  SizedBox(
                      child: SvgPicture.asset(
                    'assets/svg/cam.svg',
                    height: 14.h,
                    width: 13.w,
                  )),
                  SizedBox(
                    width: size.width * 0.07,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!Platform.isAndroid) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            surfaceTintColor: kcolorwhite,
                            backgroundColor: kcolorwhite,
                            title: const Text("Choose"),
                            content: SizedBox(
                              height: 80.h,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      context
                                          .read<PickimageCubit>()
                                          .pickfromcamera();
                                      Navigator.pop(context);
                                    },
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Camera',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      context
                                          .read<PickimageCubit>()
                                          .pickimagefromgallery();
                                      Navigator.pop(context);
                                    },
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'gallery',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      } else {
                        showCupertinoDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (BuildContext context) {
                            return CupertinoAlertDialog(
                              title: const Text('Choose'),
                              actions: <Widget>[
                                CupertinoDialogAction(
                                  child: const Text("Camera"),
                                  onPressed: () {
                                    context
                                        .read<PickimageCubit>()
                                        .pickfromcamera();
                                    Navigator.pop(context);
                                  },
                                ),
                                CupertinoDialogAction(
                                  child: const Text("Gallery"),
                                  onPressed: () {
                                    context
                                        .read<PickimageCubit>()
                                        .pickimagefromgallery();
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Container(
                      height: 70.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        color: kcolorwhite,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: state.imageurls == null
                          ? SvgPicture.asset(
                              'assets/svg/AddImage.svg',
                              height: size.height * 0.07,
                              width: size.height * 0.07,
                              fit: BoxFit.cover,
                            )
                          : SizedBox.fromSize(
                              size: size,
                              child: ClipRRect(
                                child: SizedBox.fromSize(
                                  child: Image.file(
                                    File(
                                      state.imageurls!.path,
                                    ),
                                    fit: BoxFit.cover,
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
        );
      },
    );
  }
}
