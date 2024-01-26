import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart';
import 'package:regal_app/feature/state/bloc/newschemehome/newschemehome_bloc.dart';
import 'package:regal_app/feature/state/cubit/checkbranchselected/checkbranchslection_cubit.dart';
import 'package:regal_app/feature/views/home/widgets/activeschemes.dart';
import 'package:regal_app/feature/views/home/widgets/bottomsection.dart';
import 'package:regal_app/feature/views/home/widgets/goldratewidget.dart';
import 'package:regal_app/feature/views/home/widgets/homepopupmenu.dart';
import 'package:regal_app/feature/views/home/widgets/profiletilewidget.dart';
import 'package:regal_app/feature/views/joinnewscheme/newschemehome.dart';

class HomeScreen extends StatelessWidget {
  final UserBaseModel user;
  const HomeScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<ActiveschemesBloc>()
          .add(GetActiveSchemes(datakey: datakey, cusid: user.cusId!));
    });
    // log(size.height.toString());
    return Scaffold(
      backgroundColor: kcolorwhite,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: ColoredBox(
          color: kbgcolor,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomePopupMenu(),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        /* physics: MediaQuery.of(context).size.height > 855
            ? const NeverScrollableScrollPhysics()
            : const AlwaysScrollableScrollPhysics(), */
        child: Column(
          children: [
            Container(
              color: kbgcolor,
              child: Column(children: [
                ProfileTileWidget(
                  user: user,
                  /*  schemes: state.when(
                      activeAchemesState: (schemes) => schemes ?? [],
                      failedstate: () => []), */
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        "Today's Gold Rate",
                        style: TextStyle(
                          // fontFamily: kprimaryfont,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: ktextgrey.withOpacity(
                            .7,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const GoldRateWidget(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Active Schemes",
                        style: TextStyle(
                          // fontFamily: kprimaryfont,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.sp,
                          color: ktextgrey.withOpacity(
                            .7,
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: kgold1,
                        height: 25.h,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                        minWidth: 40.w,
                        onPressed: () {
                          context
                              .read<CheckbranchslectionCubit>()
                              .checkisselected('');
                          context
                              .read<NewschemehomeBloc>()
                              .add(const GetAllSchemesfromHomesEvent());
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    NewSchemefrHome(user: user),
                              ));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.add,
                              size: 17.sp,
                              color: kcolorwhite,
                            ),
                            Text(
                              'Join New Scheme',
                              style: TextStyle(
                                  color: kcolorwhite, fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ActiveSchemeWidget(user: user),
                SizedBox(
                  height: 10.h,
                ),
              ]),
            ),
            BottomSectionWidget(
              user: user,
            ),
            /* Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              color: kcolorwhite,
            ), */
          ],
        ),
      ),
    );
  }
}
