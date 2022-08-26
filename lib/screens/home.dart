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
            child: Listener(
              onPointerSignal: (pointerSignal) {
                if (pointerSignal is PointerScrollEvent) {
                  double scroll = pointerSignal.scrollDelta.dy;
                  if (pointerSignal.scrollDelta.dy.abs() >= 100) {
                    if (scroll > 0) {
                      // Adding the extra offset to over scroll done by user
                      scroll = (scrollController.offset + scroll + 75);
                    } else {
                      scroll = (scrollController.offset + scroll - 75);
                    }
                  } else {
                    scroll += scrollController.offset;
                  }

                  if (scroll > scrollController.position.maxScrollExtent) {
                    scroll = scrollController.position.maxScrollExtent;
                  } else if (scroll < 0) {
                    scroll = 0;
                  }
                  if (pointerSignal.scrollDelta.dy.abs() >= 100) {
                    scrollController.animateTo(scroll,
                        duration: const Duration(milliseconds: 75),
                        curve: Curves.linear);
                  } else {
                    scrollController.jumpTo(scroll);
                  }
                }
              },
              child: ListView(
                controller: scrollController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  // SizedBox(
                  //     height: height,
                  //     child: IntroSection(
                  //       introBGIMGWidget: widget.bgImg ??
                  //           Image.asset(
                  //             homeBGIMG,
                  //             fit: BoxFit.cover,
                  //             filterQuality: FilterQuality.none,
                  //           ),
                  //       scrollCallback: () {
                  //         scrollController.animateTo(height,
                  //             duration: const Duration(milliseconds: 400),
                  //             curve: Curves.easeInOutQuart);
                  //       },
                  //     )),
                  // AboutMeSection(),
                  // MoreSection(),
                  // ProductivitySection(),
                  PortfolioSection(),
                  GetInTouchSection()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
