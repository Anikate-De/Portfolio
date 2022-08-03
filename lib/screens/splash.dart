import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/screens/home.dart';

class SplashScreen extends StatefulWidget {
  static String routeId = 'splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _logoController;

  late Image bgImage;

  @override
  void initState() {
    super.initState();
    _logoController = AnimationController(vsync: this);
    _logoController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacementNamed(context, HomeScreen.routeId,
            arguments: bgImage);
      }
    });
    bgImage = Image.asset(
      homeBGIMG,
      fit: BoxFit.cover,
      filterQuality: FilterQuality.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadowGrey.shade100,
      body: Center(
        child: Lottie.asset(
          logoLottie,
          controller: _logoController,
          onLoaded: (composition) {
            _logoController
              ..duration = composition.duration
              ..forward();

            precacheImage(bgImage.image, context);
          },
          height: 100,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
