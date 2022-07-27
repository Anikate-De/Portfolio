import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/sections/sections.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomeScreen extends StatefulWidget {
  static const String routeId = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            parallaxBGSVG,
            fit: BoxFit.fitWidth,
          ),
          Center(
            child: WebSmoothScroll(
              animationDuration: 400,
              scrollOffset: 75,
              controller: scrollController,
              child: ListView(
                controller: scrollController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(height: height, child: const IntroSection()),
                  const AboutMeSection(),
                  const MoreSection(),
                  const ProductivitySection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
