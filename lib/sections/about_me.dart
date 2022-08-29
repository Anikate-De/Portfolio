import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  bool downArrowVisible = false;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    log('${width}x${MediaQuery.of(context).size.height}');
    double fontSize = 18;
    return VisibilityDetector(
      key: const Key('about-me-section'),
      onVisibilityChanged: (visibilityInfo) {
        if (width > 500) {
          if (visibilityInfo.visibleFraction > 0 && !downArrowVisible) {
            downArrowVisible = true;
            animationController.forward(from: 0);
          } else if (visibilityInfo.visibleFraction == 0) {
            downArrowVisible = false;
            animationController.value = 0;
          }
        }
      },
      child: Container(
        color: AppColors.shadowGrey.shade100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width > 500 ? width / 5.33 : 60,
              child: width > 500
                  ? Align(
                      alignment: Alignment.topCenter,
                      child: Lottie.asset(
                        downArrowHeadLottie,
                        onLoaded: (composition) {
                          animationController.duration = composition.duration;
                        },
                        animate: false,
                        controller: animationController,
                        repeat: false,
                        width: width > 800
                            ? 100
                            : width /
                                8, //? reduce size based on width for tablet size
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  : null,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    top: width > 500 ? 160.0 : 100,
                    bottom: width > 500 ? 160 : 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: AppColors.lightTeal, width: 6),
                                right: BorderSide(
                                    color: AppColors.lightTeal, width: 6),
                              ),
                            ),
                            padding:
                                const EdgeInsets.only(right: 16, bottom: 16),
                            child: Text(
                              aboutMeMainText,
                              style: TextStyle(
                                fontFamily: headingFont,
                                fontSize: width > 500 ? 24 : 20,
                                letterSpacing: -0.6,
                                wordSpacing: -2,
                                color: AppColors.shadowGrey.shade700,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 72,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: bodyFont,
                                color: AppColors.shadowGrey.shade700,
                                wordSpacing: -1,
                                fontSize: fontSize,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: aboutMeTexts[0],
                                ),
                                TextSpan(
                                  text: aboutMeTexts[1],
                                  style: const TextStyle(
                                    color: AppColors.seaBlue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: aboutMeTexts[2],
                                  style: const TextStyle(
                                    color: AppColors.tangerine,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: aboutMeTexts[3],
                                  style: const TextStyle(
                                    color: AppColors.greenAccentLight,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 36,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: bodyFont,
                                color: AppColors.shadowGrey.shade700,
                                wordSpacing: -1,
                                fontSize: fontSize,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: aboutMeTexts[4],
                                ),
                                TextSpan(
                                  text: aboutMeTexts[5],
                                  style: const TextStyle(
                                    color: AppColors.lightTeal,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: aboutMeTexts[6],
                                ),
                                TextSpan(
                                  text: aboutMeTexts[7],
                                  style: const TextStyle(
                                    color: AppColors.seaBlue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: aboutMeTexts[8],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 36,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: bodyFont,
                                color: AppColors.shadowGrey.shade700,
                                wordSpacing: -1,
                                fontSize: fontSize,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: aboutMeTexts[9],
                                ),
                                TextSpan(
                                  text: aboutMeTexts[10],
                                  style: const TextStyle(
                                    color: AppColors.lightTeal,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 36,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontFamily: bodyFont,
                                color: AppColors.shadowGrey.shade700,
                                wordSpacing: -1,
                                fontSize: fontSize,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: aboutMeTexts[11],
                                ),
                                TextSpan(
                                  text: aboutMeTexts[12],
                                  style: const TextStyle(
                                    color: AppColors.redAccent,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: aboutMeTexts[13],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    width >= 768
                        ? SizedBox(
                            width: width >= 1200
                                ? width / 16
                                : 50, //? at 1200, reduce the width of the SB
                          )
                        : const SizedBox.shrink(),
                    width >= 768
                        ? Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Center(
                                    child: Hoverable(
                                      yOffset: -10,
                                      child: SizedBox(
                                        child: LayoutBuilder(
                                          builder: (context, constraints) =>
                                              Image.asset(
                                            meIMG,
                                            fit: BoxFit.fitHeight,
                                            // fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  aboutMeTexts[14],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontFamily: bodyFont,
                                    color: AppColors.lightTeal,
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: -1,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: width > 500 ? width / 5.33 : 60,
            )
          ],
        ),
      ),
    );
  }
}
