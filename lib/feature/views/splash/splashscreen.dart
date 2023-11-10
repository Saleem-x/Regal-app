import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regal_app/feature/state/bloc/splash/splash_bloc.dart';
import 'package:regal_app/feature/views/auth/loginscreen.dart';
import 'package:regal_app/core/constents/colors/kcolors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    Timer(const Duration(milliseconds: 1500), () {
      _controller!.forward();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    context.read<SplashBloc>().add(const SplashtohomeEvent());
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kcolorblack,
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          log('$state');
          state.when(
            animatingstate: () {
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                  (route) => false,
                );
              });
            },
            splashScreenState: () {},
          );
        },
        child: BlocBuilder<SplashBloc, SplashState>(
          builder: (context, state) {
            return Stack(
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: kcolorblack,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/bg_1.png',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                FadeTransition(
                  opacity: _controller!,
                  child: Container(
                    color: kcolorgrey.withOpacity(.5),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/others/regal_logo-optimized.svg',
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   _controller!.dispose();
  //   super.dispose();
  // }

  navigate() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
      (route) => false,
    );
  }
}
