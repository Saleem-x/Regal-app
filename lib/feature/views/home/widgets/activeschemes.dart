import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/core/constents/fonts/kfonts.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart';
import 'package:regal_app/feature/state/bloc/schemedetails/schemedetails_bloc.dart';
import 'package:regal_app/feature/state/cubit/schemeselector/schemeselector_cubit.dart';
import 'package:regal_app/feature/widgets/activeschemeskelton.dart';
import 'package:shimmer/shimmer.dart';

class ActiveSchemeWidget extends StatelessWidget {
  final UserBaseModel user;
  const ActiveSchemeWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    context
        .read<ActiveschemesBloc>()
        .add(GetActiveSchemes(datakey: datakey, cusid: user.cusId!));
    return SizedBox(
      height: 120.w,
      // width: size.width.w,
      child: BlocListener<ActiveschemesBloc, ActiveschemesState>(
        listener: (context, state) {
          state.when(
            activeAchemesState: (schemes) {
              if (schemes != null) {
                context.read<SchemedetailsBloc>().add(
                      GetschemedetailsEvent(
                        cusid: user.cusId!,
                        schmId: schemes[0].schemeNo!,
                        datakeys: datakey,
                        scheme: schemes[0],
                      ),
                    );
              }
            },
            failedstate: () {},
          );
        },
        child: BlocBuilder<ActiveschemesBloc, ActiveschemesState>(
          builder: (context, state) {
            return state.when(
              activeAchemesState: (schemes) => schemes == null
                  ? const ActiveSchemeSkelton()
                  : ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 5, right: 10),
                          child: BlocBuilder<SchemeselectorCubit,
                              SchemeselectorState>(
                            builder: (context, selected) {
                              return GestureDetector(
                                onTap: () {
                                  context
                                      .read<SchemeselectorCubit>()
                                      .selectscheme(index);
                                      context.read<SchemedetailsBloc>().add(
                                        GetschemedetailsEvent(
                                          cusid: user.cusId!,
                                          schmId: schemes[index].schemeNo!,
                                          datakeys: datakey,
                                          scheme: schemes[index],
                                        ),
                                      );
                                  context.read<SchemedetailsBloc>().add(
                                        GetschemedetailsEvent(
                                          cusid: user.cusId!,
                                          schmId: schemes[index].schemeNo!,
                                          datakeys: datakey,
                                          scheme: schemes[index],
                                        ),
                                      );
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    width: 230.w,
                                    decoration: BoxDecoration(
                                      color: kcolorwhite,
                                      gradient: LinearGradient(
                                          colors: selected.idx == index
                                              ? [kgold1, kgold2]
                                              : [kcolorwhite, kcolorwhite],
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.topRight),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/others/scheme.svg',
                                              height: 18.h,
                                              width: 15.w,
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Text(
                                              schemes[index].schemeNo!,
                                              style: TextStyle(
                                                  fontFamily: kprimaryfont,
                                                  fontSize: 20.sp,
                                                  color: selected.idx == index
                                                      ? kcolorwhite
                                                      : ktextgrey,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Text(
                                              '${schemes[index].schemeName} | ₹${schemes[index].totalAmount}',
                                              style: TextStyle(
                                                  fontFamily: kprimaryfont,
                                                  fontSize: 12.sp,
                                                  color: selected.idx == index
                                                      ? kcolorwhite
                                                      : ktextgrey,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 0,
                      ),
                      itemCount: schemes.length,
                    ),
              failedstate: () => const ActiveSchemeSkelton(),
            );
          },
        ),
      ),
    );
  }
}

class SchemesShimmer extends StatelessWidget {
  const SchemesShimmer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: size.width / 2.w,
                height: size.width / 5.h,
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
        itemCount: 3);
  }
}
