import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/state/bloc/contactus/contactus_bloc.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    context
        .read<ContactusBloc>()
        .add(const GetContactDetailsEvent(datakey: datakey));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: BlocBuilder<ContactusBloc, ContactusState>(
          builder: (context, state) {
            return state.when(
              getcontactdetails: (contactdetails) => contactdetails == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '${contactdetails.orgName}-${contactdetails.branchName}',
                              style: TextStyle(
                                color: kredbutton.withOpacity(.9),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        ContactWidget(
                          size: size,
                          icon1: 'assets/svg/profile.svg',
                          title: contactdetails.staffName!,
                        ),
                        ContactWidget(
                          size: size,
                          icon1: 'assets/svg/mail.svg',
                          title: contactdetails.email!,
                          img: 'assets/svg/sendmail.svg',
                        ),
                        ContactWidget(
                          size: size,
                          icon1: 'assets/svg/phone.svg',
                          title: contactdetails.mobile!,
                          img: 'assets/svg/call.svg',
                        ),
                        ContactWidget(
                          size: size,
                          icon1: 'assets/svg/whatsapp_1.svg',
                          title: contactdetails.whatsApp!,
                          img: 'assets/svg/whatsapp.svg',
                        ),
                      ],
                    ),
              contactFailedState: () {
                return const SizedBox();
              },
            );
          },
        ),
      ),
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    super.key,
    required this.size,
    required this.icon1,
    this.img,
    required this.title,
  });

  final Size size;
  final String icon1;
  final String? img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon1,
              height: 10.h,
              width: 10.w,
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            Text(
              title,
              style: const TextStyle(color: ktextgrey, fontSize: 14),
            ),
            const Spacer(),
            img == null
                ? const SizedBox()
                : SvgPicture.asset(
                    img!,
                    height: 13.h,
                    width: 13.w,
                  )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Divider(
            color: ktextgrey.withOpacity(.3),
          ),
        )
      ],
    );
  }
}
