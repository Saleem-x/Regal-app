import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:regal_app/feature/state/cubit/otptimer/otptimer_cubit.dart';

class OtpTimerWidget extends StatelessWidget {
  const OtpTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtptimerCubit, OtptimerState>(
      builder: (context, state) {
        return state.time == 30 || state.time == 0
            ? const SizedBox.shrink()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: SizedBox(
                  child: Text(
                    'in ${state.time} seconds...',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: ktextgrey.withOpacity(.5),
                    ),
                  ),
                ),
              );
      },
    );
  }
}
