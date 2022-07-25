import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/resources/resources.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({Key? key}) : super(key: key);

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  final Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          homeBGSVG,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.only(left: 300, right: 200),
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
                Text(
                  introPageTexts[1],
                  style: TextStyle(
                    fontFamily: centerOfAttractionFont,
                    color: AppColors.shadowGrey.shade50,
                    fontSize: 50,
                    // letterSpacing: -0.6,
                    // wordSpacing: -2,
                  ),
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
                    fontSize: 19,
                    letterSpacing: -0.6,
                    wordSpacing: -2,
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                TextButton(
                  onPressed: () {
                    log('About me was tapped');
                  },
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 36, vertical: 28)),
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.any(interactiveStates.contains)) {
                          return (AppColors.shadowGrey.shade500);
                        } else {
                          return (AppColors.shadowGrey.shade50);
                        }
                      }),
                      foregroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        if (states.any(interactiveStates.contains)) {
                          return (AppColors.shadowGrey.shade50);
                        } else {
                          return (AppColors.shadowGrey.shade600);
                        }
                      }),
                      side: MaterialStateProperty.resolveWith((states) {
                        if (states.any(interactiveStates.contains)) {
                          return (BorderSide(
                              color: AppColors.shadowGrey.shade50, width: 4));
                        } else {
                          return (BorderSide.none);
                        }
                      }),
                      shape: MaterialStateProperty.all(
                          const ContinuousRectangleBorder(
                              borderRadius: BorderRadius.zero))
                      // MaterialStateProperty.all(
                      //   AppColors.shadowGrey.shade600,
                      // ),
                      ),
                  child: const Text(
                    aboutMeMainText,
                    style: TextStyle(
                      fontFamily: headingFont,
                      fontSize: 18,
                      letterSpacing: -0.6,
                      wordSpacing: -2,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
