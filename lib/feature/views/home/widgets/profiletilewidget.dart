import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart';
import 'package:regal_app/feature/state/cubit/schemeselector/schemeselector_cubit.dart';

class ProfileTileWidget extends StatelessWidget {
  final UserBaseModel user;
  const ProfileTileWidget({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0),
      child: Row(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.sp),
            ),
            color: kcolorwhite,
            child: Container(
              width: 51.h,
              height: 47.h,
              decoration: BoxDecoration(
                color: kcolorwhite,
                borderRadius: BorderRadius.circular(14.sp),
                /* image: const DecorationImage(
                  image: AssetImage('assets/images/Portrait_Placeholder.png'),
                  fit: BoxFit.cover,
                ), */
                /* boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(-1, 3),
                  ),
                ], */
              ),
              child: Center(
                child: Text(
                  user.cusName.toString().split('')[0].toUpperCase(),
                  style: TextStyle(
                    color: const Color.fromARGB(227, 241, 191, 7),
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
            child: SizedBox(
              height: 66.h,
              width: size.width.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<ActiveschemesBloc, ActiveschemesState>(
                    builder: (context, state) {
                      return BlocBuilder<SchemeselectorCubit,
                          SchemeselectorState>(
                        builder: (context, ind) {
                          return state.when(
                              activeAchemesState: (schemes) => Text(
                                    schemes == null
                                        ? user.cusName
                                        : schemes[ind.idx].custName ??
                                            '${user.cusName}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19.sp,
                                    ),
                                  ),
                              failedstate: () => Text(
                                    '${user.cusName}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19.sp,
                                    ),
                                  ));
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    '+91 ${user.cusMobileNumber}',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
