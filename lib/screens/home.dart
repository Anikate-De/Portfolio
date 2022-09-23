import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/sections/sections.dart';

class HomeScreen extends StatefulWidget {
  static const String routeId = 'home';

  final Image? bgImg;

  const HomeScreen({this.bgImg, Key? key}) : super(key: key);

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
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: ListView(
                controller: scrollController,
                children: [
                  SizedBox(
                      height: height,
                      child: IntroSection(
                        introBGIMGWidget: widget.bgImg ??
                            Image.asset(
                              homeBGIMG,
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.none,
                            ),
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

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
