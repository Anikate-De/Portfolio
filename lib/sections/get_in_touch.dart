import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/widgets/hoverable.dart';
import 'package:visibility_detector/visibility_detector.dart';

class GetInTouchSection extends StatefulWidget {
  const GetInTouchSection({Key? key}) : super(key: key);

  @override
  State<GetInTouchSection> createState() => _GetInTouchSectionState();
}

class _GetInTouchSectionState extends State<GetInTouchSection> {
  bool isHovering = false;
  bool isEmailVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fontSize = width > 500 ? 22 : 18;
    log(width.toString());
    return VisibilityDetector(
      key: const Key('getInTouchSection'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.8 && !isEmailVisible) {
          setState(() {
            isEmailVisible = true;
          });
        } else if (visibilityInfo.visibleFraction == 0 && isEmailVisible) {
          setState(() {
            isEmailVisible = false;
          });
        }
      },
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.only(
            left: width > 500 ? width / 5.33 : 80,
            right: width > 500 ? width / 5.33 : 80,
            top: width > 500 ? 140 : 110,
            bottom: width > 500 ? 40 : 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              getInTouchMainText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: headingFont,
                fontSize: width > 500 ? 26 : 22,
                letterSpacing: -0.6,
                wordSpacing: -2,
                color: AppColors.shadowGrey.shade50,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width > 500 ? width / 16 : 20),
              child: Text(
                getInTouchText1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: bodyFont,
                  fontSize: fontSize,
                  letterSpacing: -0.6,
                  wordSpacing: -2,
                  color: AppColors.shadowGrey.shade300,
                ),
              ),
            ),
            SizedBox(
              height: width > 500 ? 72 : 54,
            ),
            Center(
              child: Hoverable(
                yOffset: -8,
                child: MouseRegion(
                  onEnter: ((event) {
                    setState(() {
                      isHovering = true;
                    });
                  }),
                  onExit: ((event) {
                    setState(() {
                      isHovering = false;
                    });
                  }),
                  child: TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      log('Email was clicked');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: width > 500 ? 5 : 3,
                              color: AppColors.shadowGrey.shade50,
                            ),
                          ),
                        ),
                        child: isEmailVisible
                            ? AnimatedTextKit(
                                isRepeatingAnimation: false,
                                animatedTexts: [
                                  TyperAnimatedText(
                                    getInTouchEmail,
                                    speed: kThemeChangeDuration * 0.85,
                                    textStyle: TextStyle(
                                      fontFamily: headingFont,
                                      fontSize: width > 500
                                          ? width >= 900
                                              ? 24
                                              : width >= 666
                                                  ? 18
                                                  : 16
                                          : 14,
                                      letterSpacing: -0.6,
                                      wordSpacing: -2,
                                      color: AppColors.shadowGrey.shade50,
                                    ),
                                    textAlign: TextAlign.center,
                                    curve: Curves.easeInOut,
                                  ),
                                ],
                              )
                            : Text(
                                '',
                                style: TextStyle(
                                  fontFamily: headingFont,
                                  fontSize: 24,
                                  letterSpacing: -0.6,
                                  wordSpacing: -2,
                                  color: AppColors.shadowGrey.shade50,
                                ),
                                textAlign: TextAlign.center,
                              ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 72,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hoverable(
                  child: TextButton(
                      onPressed: () {
                        log('Github was clicked');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Image.asset(
                          githubIconIMG,
                          height: 32,
                          filterQuality: FilterQuality.high,
                        ),
                      )),
                ),
                const SizedBox(
                  width: 40,
                ),
                Hoverable(
                  child: TextButton(
                      onPressed: () {
                        log('Instagram was clicked');
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Image.asset(
                          instagramIconIMG,
                          height: 32,
                          filterQuality: FilterQuality.high,
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: width > 500 ? 72 : 54,
            ),
            Text(
              getInTouchBuiltWithText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: bodyFont,
                fontSize: 16,
                letterSpacing: -0.6,
                wordSpacing: -2,
                color: AppColors.shadowGrey.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
