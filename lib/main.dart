import 'package:flutter/material.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/feature/data/di/injectable.dart';
import 'package:regal_app/feature/state/bloc/activeschemes/activeschemes_bloc.dart';
import 'package:regal_app/feature/state/bloc/contactus/contactus_bloc.dart';
import 'package:regal_app/feature/state/bloc/dropsownitems/dropdownitems_bloc.dart';
import 'package:regal_app/feature/state/bloc/goldrate/goldrate_bloc.dart';
import 'package:regal_app/feature/state/bloc/instalmenthystory/instalmenthystory_bloc.dart';
import 'package:regal_app/feature/state/bloc/login/login_bloc.dart';
import 'package:regal_app/feature/state/bloc/newschemeotp/newschemeotp_bloc.dart';
import 'package:regal_app/feature/state/bloc/resetpin/resetpin_bloc.dart';
import 'package:regal_app/feature/state/bloc/schemedetails/schemedetails_bloc.dart';
import 'package:regal_app/feature/state/bloc/splash/splash_bloc.dart';
import 'package:regal_app/feature/state/bloc/updatenewpin/updatenewpin_bloc.dart';
import 'package:regal_app/feature/state/cubit/checkbranchselected/checkbranchslection_cubit.dart';
import 'package:regal_app/feature/state/cubit/mobilevalidator/mobilevalidator_cubit.dart';
import 'package:regal_app/feature/state/cubit/otptimer/otptimer_cubit.dart';
import 'package:regal_app/feature/state/cubit/pickimage/pickimage_cubit.dart';
import 'package:regal_app/feature/state/cubit/schemeselector/schemeselector_cubit.dart';
import 'package:regal_app/feature/views/splash/splashscreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  configureinjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SplashBloc>(
            create: (context) => SplashBloc(),
          ),
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(),
          ),
          BlocProvider<MobilevalidatorCubit>(
            create: (context) => MobilevalidatorCubit(),
          ),
          BlocProvider(
            create: (context) => getit<GoldrateBloc>(),
          ),
          BlocProvider(
            create: (context) => getit<ActiveschemesBloc>(),
          ),
          BlocProvider<SchemeselectorCubit>(
            create: (context) => SchemeselectorCubit(),
          ),
          BlocProvider(
            create: (context) => getit<SchemedetailsBloc>(),
          ),
          BlocProvider(
            create: (context) => getit<ContactusBloc>(),
          ),
          BlocProvider(
            create: (context) => getit<InstalmenthystoryBloc>(),
          ),
          BlocProvider(
            create: (context) => getit<NewschemeotpBloc>(),
          ),
          BlocProvider<OtptimerCubit>(
            create: (context) => OtptimerCubit(),
          ),
          BlocProvider(
            create: (context) => getit<DropdownitemsBloc>(),
          ),
          BlocProvider<PickimageCubit>(
            create: (context) => PickimageCubit(),
          ),
          BlocProvider<CheckbranchslectionCubit>(
            create: (context) => CheckbranchslectionCubit(),
          ),
          BlocProvider(
            create: (context) => getit<ResetpinBloc>(),
          ),
          BlocProvider(
            create: (context) => getit<UpdatenewpinBloc>(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'SF Pro Display',
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            colorScheme: ColorScheme.fromSeed(
              seedColor: kcolorblack.withOpacity(
                .6,
              ),
            ),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
