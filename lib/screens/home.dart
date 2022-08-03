import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/sections/sections.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomeScreen extends StatefulWidget {
  static const String routeId = 'home';

  final Image bgImg;

  const HomeScreen({required this.bgImg, Key? key}) : super(key: key);

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
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              parallaxBGIMG,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.none,
            ),
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
                  SizedBox(
                      height: height,
                      child: IntroSection(
                        introBGIMGWidget: widget.bgImg,
                        scrollCallback: () {
                          scrollController.animateTo(height,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOutQuart);
                        },
                      )),
                  const AboutMeSection(),
                  const MoreSection(),
                  const ProductivitySection(),
                  const PortfolioSection(),
                  const GetInTouchSection()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
