import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/feature/data/models/gold_rate_model/gold_rate_model.dart';
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart';
import 'package:regal_app/feature/state/bloc/goldrate/goldrate_bloc.dart';
import 'package:regal_app/feature/state/cubit/schemeselector/schemeselector_cubit.dart';
import 'package:regal_app/feature/widgets/goldrateskelton.dart';

class GoldRateWidget extends StatelessWidget {
  const GoldRateWidget({super.key});

  // get activeAchemesState => null;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    context.read<GoldrateBloc>().add(const GetgoldRateEvent(datakey: datakey));
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: BlocBuilder<GoldrateBloc, GoldrateState>(
        builder: (context, state) {
          return state.when(
            goldratestate: (goldrate) => goldrate == null
                ? const GoldrateSkelton()
                : BlocBuilder<ActiveschemesBloc, ActiveschemesState>(
                    builder: (context, schemes) {
                      return BlocBuilder<SchemeselectorCubit,
                          SchemeselectorState>(
                        builder: (context, ind) {
                          return schemes.when(
                            activeAchemesState: (scheme) {
                              return scheme == null
                                  ? const GoldrateSkelton()
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            /* SvgPicture.asset(
                                                            'assets/others/gr.svg',
                                                            height: 60.h,
                                                          ), */
                                            Image.asset(
                                              'assets/images/GoldRate.png',
                                              height: 60.h,
                                              fit: BoxFit.cover,
                                              filterQuality: FilterQuality.high,
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Expanded(
                                              child: SizedBox(
                                                height: 60.h,
                                                width: size.width,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            'Last Change ${getlastDateandtime(goldrate, int.parse(scheme[ind.idx].branchId ?? '0'))}',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 10.sp,
                                                              color: kcolorblack
                                                                  .withOpacity(
                                                                      .9),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          // '₹${schemes.when(activeAchemesState: (scheme) => scheme == null ? double.parse(getboardRate(goldrate, int.parse(scheme![ind.idx].branchId ?? '0')) ?? '0').toStringAsFixed(2) : double.parse(getboardRate(goldrate, int.parse(scheme[ind.idx].branchId ?? '0')) ?? '0').toStringAsFixed(2), failedstate: () => goldrate[0].boardRate) ?? ''}',
                                                          // '${goldrate.boardRate}',

                                                          getboardRate(
                                                              goldrate,
                                                              int.parse(scheme[
                                                                          ind.idx]
                                                                      .branchId ??
                                                                  '0')),
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 18.sp),
                                                        ),
                                                        SizedBox(
                                                          width: 2.w,
                                                        ),
                                                        Text(
                                                          '(${goldrate[0].weight ?? ''} gram)',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 10.sp,
                                                              color: kcolorblack
                                                                  .withOpacity(
                                                                      .8)),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      // '₹${schemes.when(activeAchemesState: (scheme) => scheme == null ? goldrate[0].totalPrice : (double.parse(scheme[ind.idx].goldRate ?? '0') * 8).toStringAsFixed(2), failedstate: () => goldrate[0].totalPrice) ?? ''} ( 8 grams )',
                                                      "${gettotalRate(goldrate, int.parse(scheme[ind.idx].branchId ?? '0'))} ( 8 grams )",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 10.sp,
                                                        color: kcolorblack
                                                            .withOpacity(.8),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        /*  SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Gold rate shown here is based on Thrissur dist. It may be varies with your region',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.sp,
                                  color: kcolorblack.withOpacity(.8),
                                ),
                              ) */
                                      ],
                                    );
                            },
                            failedstate: () => const GoldrateSkelton(),
                          );
                        },
                      );
                    },
                  ),
            failedState: () => const GoldrateSkelton(),
          );
        },
      ),
    );
  }

  getboardRate(List<GoldRateModel> goldratelist, final int branchid) {
    /* final br =
        goldratelist.indexWhere((element) => branchid == element.branchId);
    String boardrate = goldratelist[br].boardRate ?? '';
    return boardrate; */
    String boardrate = '';
    final br = goldratelist
        .where((element) => branchid == element.branchId)
        .isNotEmpty;
    log(br.toString());

    if (br == true) {
      int idx =
          goldratelist.indexWhere((element) => element.branchId == branchid);
      boardrate = goldratelist[idx].boardRate ?? '';
    }
    return boardrate;
  }

  gettotalRate(List<GoldRateModel> goldratelist, final int branchid) {
    /*   final br =
        goldratelist.indexWhere((element) => branchid == element.branchId);
    String boardrate = goldratelist[br].totalPrice ?? '';
    return boardrate; */

    String boardrate = '';
    final br = goldratelist
        .where((element) => branchid == element.branchId)
        .isNotEmpty;
    log(br.toString());

    if (br == true) {
      int idx =
          goldratelist.indexWhere((element) => element.branchId == branchid);
      boardrate = "${goldratelist[idx].totalPrice}";
    }
    return boardrate;
  }

  getlastDateandtime(List<GoldRateModel> goldratelist, final int branchid) {
    String boardrate = '';
    final br = goldratelist
        .where((element) => branchid == element.branchId)
        .isNotEmpty;
    log(br.toString());

    if (br == true) {
      int idx =
          goldratelist.indexWhere((element) => element.branchId == branchid);
      boardrate =
          "${goldratelist[idx].entryDate} | ${goldratelist[idx].entryTime}";
    }
    return boardrate;
  }
}
