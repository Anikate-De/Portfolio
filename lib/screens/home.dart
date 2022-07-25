import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/sections/sections.dart';

class HomeScreen extends StatefulWidget {
  static const String routeId = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      if (pageController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        pageController.nextPage(
            duration: const Duration(milliseconds: 70),
            curve: Curves.easeInOutCirc);
      } else if (pageController.position.userScrollDirection ==
          ScrollDirection.forward) {
        pageController.previousPage(
            duration: const Duration(milliseconds: 70),
            curve: Curves.easeInOutCirc);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.shadowGrey.shade500,
      body: Center(
        child: PageView(
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: const [
            IntroSection(),
          ],
        ),
      ),
    );
  }
}
