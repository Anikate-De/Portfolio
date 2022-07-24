import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/resources/resources.dart';

class HomeScreen extends StatefulWidget {
  static String routeId = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _logoController;
  Offset bgOffset = const Offset(0, 1);
  bool logoAlive = true;

  @override
  void initState() {
    super.initState();
    _logoController = AnimationController(vsync: this);
    _logoController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        log('Start splash to home transition');
        setState(() {
          bgOffset = const Offset(0, 0);
        });
        Future.delayed(const Duration(milliseconds: 600), () {
          setState(() {
            logoAlive = false;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadowGrey.shade100,
      body: Stack(
        children: [
          Center(
            child: logoAlive
                ? Lottie.asset(
                    logoLottie,
                    controller: _logoController,
                    onLoaded: (composition) {
                      _logoController
                        ..duration = composition.duration
                        ..forward();
                    },
                    height: 100,
                    fit: BoxFit.fitHeight,
                  )
                : null,
          ),
          Positioned.fill(
            child: AnimatedSlide(
                offset: bgOffset,
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOutQuart,
                child: Container(color: AppColors.shadowGrey.shade500)),
          ),
        ],
      ),
    );
  }
}
