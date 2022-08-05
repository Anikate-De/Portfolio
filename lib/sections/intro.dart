import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/widgets/hoverable_button.dart';

class IntroSection extends StatefulWidget {
  final VoidCallback scrollCallback;
  final Image introBGIMGWidget;

  const IntroSection(
      {required this.introBGIMGWidget, required this.scrollCallback, Key? key})
      : super(key: key);

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  Future<void> loadingAnim() {
    return Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned.fill(
          child: widget.introBGIMGWidget,
        ),
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width > 500 ? width / 5.33 : 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  introPageTexts[0],
                  style: TextStyle(
                    fontFamily: headingFont,
                    color: AppColors.shadowGrey.shade300,
                    fontSize: 18,
                    letterSpacing: -0.6,
                    wordSpacing: -2,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                FutureBuilder(
                  future: loadingAnim(),
                  builder: ((context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            introPageTexts[1],
                            speed: kThemeChangeDuration,
                            textStyle: TextStyle(
                              fontFamily: centerOfAttractionFont,
                              color: AppColors.shadowGrey.shade50,
                              fontSize: 50,
                            ),
                            curve: Curves.easeInOut,
                          ),
                        ],
                      );
                    } else {
                      return Text(
                        '',
                        style: TextStyle(
                          fontFamily: centerOfAttractionFont,
                          color: AppColors.shadowGrey.shade50,
                          fontSize: 50,
                        ),
                      );
                    }
                  }),
                ),
                const SizedBox(
                  height: 36,
                ),
                Text(
                  introPageTexts[2],
                  style: TextStyle(
                    fontFamily: headingFont,
                    color: AppColors.shadowGrey.shade100,
                    fontSize: 32,
                    letterSpacing: -0.6,
                    wordSpacing: -2,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  introPageTexts[3],
                  style: TextStyle(
                      fontFamily: headingFont,
                      color: AppColors.shadowGrey.shade200,
                      fontSize: 18,
                      letterSpacing: -0.8,
                      wordSpacing: -2.4,
                      height: 1.4),
                ),
                const SizedBox(
                  height: 48,
                ),
                HoverableButton(
                  onPressed: widget.scrollCallback,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 60,
          child: Image.asset(
            logoIMG,
            width: 100,
            filterQuality: FilterQuality.high,
          ),
        ),
      ],
    );
  }
}
