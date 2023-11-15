import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
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
          style: TextStyle(
             fontSize: 16.sp,
          ),
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
                          icon1: Iconsax.user,
                          title: contactdetails.staffName!,
                        ),
                        ContactWidget(
                          size: size,
                          icon1: Icons.mail_outlined,
                          title: contactdetails.email!,
                          img: 'assets/images/miscellaneous.png',
                        ),
                        ContactWidget(
                          size: size,
                          icon1: FontAwesomeIcons.phone,
                          title: contactdetails.mobile!,
                          img: 'assets/images/miscellaneous.png',
                        ),
                        ContactWidget(
                          size: size,
                          icon1: FontAwesomeIcons.whatsapp,
                          title: contactdetails.whatsApp!,
                          img: 'assets/images/miscellaneous.png',
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
  final IconData icon1;
  final String? img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon1,
              size: 18,
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
            Text(
              title,
              style: const TextStyle(
                    color: ktextgrey, fontSize: 14),
            ),
            const Spacer(),
            img == null
                ? const SizedBox()
                : Image.asset(
                    'assets/images/miscellaneous.png',
                    height: size.height * 0.03,
                    width: size.height * 0.03,
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
