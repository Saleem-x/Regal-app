
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class HomePopupMenu extends StatelessWidget {
  const HomePopupMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: kcolorwhite,
      surfaceTintColor: kcolorwhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SvgPicture.asset(
        'assets/others/menu.svg',
        fit: BoxFit.cover,
        height: 25,
        width: 25,
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 'close',
            child: Icon(
              Iconsax.close_circle,
              color: ktextgrey.withOpacity(.6),
            ),
          ),
          const PopupMenuItem(
            value: 'about',
            child: Text(
              "About",
            ),
          ),
          const PopupMenuItem(
            value: 't&c',
            child: Text(
              "Terms and Conditions",
            ),
          ),
          const PopupMenuItem(
            value: 'privacy',
            child: Text(
              "privacy policy",
            ),
          ),
          const PopupMenuItem(
            value: 'logout',
            child: Text(
              "Logout",
            ),
          )
        ];
      },
    );
  }
}
