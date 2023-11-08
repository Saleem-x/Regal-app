import 'dart:async';

import 'package:flutter/material.dart';
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
    Timer(const Duration(milliseconds: 2000), () {
      _controller!.forward();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bg_1.png',
                    ),
                    fit: BoxFit.cover)),
          ),
          FadeTransition(
            opacity: _controller!,
            child: Container(
              color: kcolorgrey.withOpacity(.7),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
}
