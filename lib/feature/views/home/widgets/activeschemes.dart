import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/data/models/uset_base_model/uset_base_model.dart';
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart';
import 'package:regal_app/feature/state/bloc/schemedetails/schemedetails_bloc.dart';
import 'package:regal_app/feature/state/cubit/schemeselector/schemeselector_cubit.dart';
import 'package:regal_app/feature/widgets/activeschemeskelton.dart';
import 'package:shimmer/shimmer.dart';

class ActiveSchemeWidget extends StatefulWidget {
  final UserBaseModel user;
  const ActiveSchemeWidget({super.key, required this.user});

  @override
  State<ActiveSchemeWidget> createState() => _ActiveSchemeWidgetState();
}

class _ActiveSchemeWidgetState extends State<ActiveSchemeWidget> {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<ActiveschemesBloc>()
          .add(GetActiveSchemes(datakey: datakey, cusid: widget.user.cusId!));
    });
    return SizedBox(
      height: 120.h /*  140.sp */ /* size.height * 0.18 */,
      // width: size.width.w,
      child: BlocListener<ActiveschemesBloc, ActiveschemesState>(
        listener: (context, state) {
          state.when(
            activeAchemesState: (schemes) {
              if (schemes != null) {
                context.read<SchemedetailsBloc>().add(
                      GetschemedetailsEvent(
                        cusid: widget.user.cusId!,
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
                  : Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: SingleChildScrollView(
                        // dragStartBehavior: DragStartBehavior.start,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(0),
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: schemes.length == 1 ? 0 : 10.w,
                            ),
                            ListView.separated(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              // dragStartBehavior: DragStartBehavior.start,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Padding(
                                padding: EdgeInsets.only(
                                  left: schemes.length == 1 ? 0 : 10,
                                ),
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
                                                cusid: widget.user.cusId!,
                                                schmId:
                                                    schemes[index].schemeNo!,
                                                datakeys: datakey,
                                                scheme: schemes[index],
                                              ),
                                            );
                                        context.read<SchemedetailsBloc>().add(
                                              GetschemedetailsEvent(
                                                cusid: widget.user.cusId!,
                                                schmId:
                                                    schemes[index].schemeNo!,
                                                datakeys: datakey,
                                                scheme: schemes[index],
                                              ),
                                            );
                                      },
                                      child: Card(
                                        // shadowColor: ktextgrey,
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.sp),
                                        ),
                                        child: Container(
                                          width: 230.w,
                                          decoration: BoxDecoration(
                                            color: kcolorwhite,
                                            gradient: LinearGradient(
                                                colors: selected.idx == index
                                                    ? [kgold1, kgold2]
                                                    : [
                                                        kcolorwhite,
                                                        const Color.fromARGB(
                                                            255, 236, 235, 235)
                                                      ],
                                                begin: Alignment.bottomLeft,
                                                end: Alignment.topRight),
                                            borderRadius:
                                                BorderRadius.circular(30.sp),
                                            boxShadow: [
                                              BoxShadow(
                                                color: const Color(0xFFB2B2B2)
                                                    .withOpacity(.5)
                                                /*Colors.grey.withOpacity(0.2),*/
                                                ,
                                                blurRadius: 5,
                                                offset: const Offset(0, 1),
                                                blurStyle: BlurStyle.normal,
                                                spreadRadius: 1,
                                              )
                                            ],
                                            /* boxShadow: [
                                              BoxShadow(
                                                color:
                                                    Colors.grey.withOpacity(0.3),
                                                spreadRadius: 2,
                                                blurRadius: 5,
                                                offset: Offset(0, 3),
                                              ),
                                            ], */
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 10.h),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SvgPicture.asset(
                                                  selected.idx == index
                                                      ? 'assets/others/scheme_s.svg'
                                                      : 'assets/others/scheme.svg',
                                                  height: 18.h,
                                                  width: 15.w,
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(
                                                  schemes[index].schemeNo!,
                                                  style: TextStyle(
                                                    fontSize: 20.sp,
                                                    color: selected.idx == index
                                                        ? kcolorwhite
                                                        : ktextgrey,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 3.h,
                                                ),
                                                Text(
                                                  '${schemes[index].schemeName} | ₹${double.parse(schemes[index].totalAmount ?? '0.0').toStringAsFixed(2)}',
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color:
                                                          selected.idx == index
                                                              ? kcolorwhite
                                                              : ktextgrey,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 3.h,
                                                ),
                                                Text(
                                                  '${schemes[index].custName?.toUpperCase() ?? widget.user.cusName}',
                                                  style: TextStyle(
                                                      fontSize: 12.sp,
                                                      color:
                                                          selected.idx == index
                                                              ? kcolorwhite
                                                              : ktextgrey,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                width: 0,
                              ),
                              itemCount: schemes.length,
                            ),
                            SizedBox(
                              width: schemes.length == 1 ? 80.w : 30.w,
                            ),
                          ],
                        ),
                      ),
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
      dragStartBehavior: DragStartBehavior.start,
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
      itemCount: 3,
    );
  }
}
