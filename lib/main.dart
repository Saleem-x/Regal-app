import 'package:flutter/material.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_app/feature/state/bloc/login/login_bloc.dart';
import 'package:regal_app/feature/state/bloc/splash/splash_bloc.dart';
import 'package:regal_app/feature/state/cubit/mobilevalidator/mobilevalidator_cubit.dart';
import 'package:regal_app/feature/views/splash/splashscreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
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
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'SF Pro Display',
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
