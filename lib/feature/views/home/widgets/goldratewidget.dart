import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:regal_app/core/api/endpoints.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart';
import 'package:regal_app/feature/state/bloc/goldrate/goldrate_bloc.dart';
import 'package:regal_app/feature/state/cubit/schemeselector/schemeselector_cubit.dart';
import 'package:regal_app/feature/widgets/goldrateskelton.dart';

class GoldRateWidget extends StatelessWidget {
  const GoldRateWidget({super.key});

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
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Last Change ${goldrate.entryDate ?? ''} | ${goldrate.entryTime ?? ''}',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10.sp,
                                                    color: kcolorblack
                                                        .withOpacity(.9),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '₹${schemes.when(activeAchemesState: (scheme) => scheme == null ? goldrate.boardRate : scheme[ind.idx].goldRate, failedstate: () => goldrate.boardRate) ?? ''}',
                                                // '${goldrate.boardRate}',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18.sp),
                                              ),
                                              Text(
                                                '  (${goldrate.weight ?? ''} gram)',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10.sp,
                                                    color: kcolorblack
                                                        .withOpacity(.8)),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '₹₹${schemes.when(activeAchemesState: (scheme) => scheme == null ? goldrate.totalPrice : double.parse(scheme[ind.idx].goldRate ?? '0') * 8, failedstate: () => goldrate.totalPrice) ?? ''} ( 8 grams )',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10.sp,
                                                color: kcolorblack
                                                    .withOpacity(.8)),
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
                      );
                    },
                  ),
            failedState: () => const GoldrateSkelton(),
          );
        },
      ),
    );
  }
}
