import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/widgets/skills_mobile_ui.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../widgets/widgets.dart';

class ProductivitySection extends StatefulWidget {
  const ProductivitySection({Key? key}) : super(key: key);

  @override
  State<ProductivitySection> createState() => _ProductivitySectionState();
}

class _ProductivitySectionState extends State<ProductivitySection>
    with SingleTickerProviderStateMixin {
  late AnimationController lottieAnimationController;

  bool rightArrowVisible = false;

  @override
  void initState() {
    super.initState();
    lottieAnimationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    lottieAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fontSize = width > 500 ? 20 : 18;
    return Container(
      color: AppColors.shadowGrey.shade100,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 160),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: width > 500 ? width / 5.33 : 60,
              child: width > 500
                  ? Align(
                      alignment: const Alignment(0.3, 0.5),
                      child: Lottie.asset(
                        rightArrowHeadLottie,
                        onLoaded: (composition) {
                          lottieAnimationController.duration =
                              composition.duration;
                        },
                        controller: lottieAnimationController,
                        animate: false,
                        repeat: false,
                        width: 150,
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  : null,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    top: width > 500 ? 160 : 100,
                    right: width > 500 ? width / 5.33 : 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: AppColors.seaBlue, width: 6),
                                right: BorderSide(
                                    color: AppColors.seaBlue, width: 6),
                              ),
                            ),
                            padding:
                                const EdgeInsets.only(right: 16, bottom: 16),
                            child: Text(
                              whatIOfferMainText,
                              style: TextStyle(
                                fontFamily: headingFont,
                                fontSize: width > 500 ? 24 : 20,
                                letterSpacing: -0.6,
                                wordSpacing: -2,
                                color: AppColors.shadowGrey.shade700,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 72,
                        ),
                        Text(
                          whatIOfferText1,
                          style: TextStyle(
                            fontFamily: bodyFont,
                            color: AppColors.shadowGrey.shade700,
                            wordSpacing: -1,
                            fontSize: fontSize,
                          ),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        width > 500
                            ? Table(
                                columnWidths: const {
                                  0: FlexColumnWidth(3),
                                  1: FlexColumnWidth(1),
                                  2: FlexColumnWidth(3),
                                },
                                children: [
                                  TableRow(
                                    children: [
                                      BulletPointText(
                                          text: whatIOfferPointsList[0]),
                                      const SizedBox(width: 30),
                                      BulletPointText(
                                          text: whatIOfferPointsList[1]),
                                    ],
                                  ),
                                  const TableRow(
                                    children: [
                                      SizedBox(height: 20),
                                      SizedBox(width: 30),
                                      SizedBox(
                                        height: 20,
                                      )
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      BulletPointText(
                                          text: whatIOfferPointsList[2]),
                                      const SizedBox(width: 30),
                                      BulletPointText(
                                          text: whatIOfferPointsList[3]),
                                    ],
                                  ),
                                ],
                              )
                            : Column(
                                children: List.generate(
                                  whatIOfferPointsList.length,
                                  (index) => Column(
                                    children: [
                                      BulletPointText(
                                        text: whatIOfferPointsList[index],
                                        fontSize: fontSize,
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                    SizedBox(
                      height: width > 500 ? 230.0 : 140,
                    ),

                    //! SKILLS SECTIOn
                    width > 500
                        ? VisibilityDetector(
                            key: const Key('skills-section'),
                            onVisibilityChanged: (visibilityInfo) {
                              if (visibilityInfo.visibleFraction > 0.8 &&
                                  !rightArrowVisible) {
                                rightArrowVisible = true;
                                lottieAnimationController.forward(from: 0);
                              } else if (visibilityInfo.visibleFraction == 0) {
                                rightArrowVisible = false;
                                lottieAnimationController.value = 0;
                              }
                            },
                            child: IntrinsicHeight(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                    color: AppColors
                                                        .greenAccentLight,
                                                    width: 6),
                                                right: BorderSide(
                                                    color: AppColors
                                                        .greenAccentLight,
                                                    width: 6),
                                              ),
                                            ),
                                            padding: const EdgeInsets.only(
                                                right: 16, bottom: 16),
                                            child: Text(
                                              skillsMainText,
                                              style: TextStyle(
                                                fontFamily: headingFont,
                                                fontSize: 24,
                                                letterSpacing: -0.6,
                                                wordSpacing: -2,
                                                color: AppColors
                                                    .shadowGrey.shade700,
                                              ),
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
                                              color:
                                                  AppColors.shadowGrey.shade700,
                                              wordSpacing: -1,
                                              fontSize: 20,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: skillsTexts[0],
                                              ),
                                              TextSpan(
                                                text: skillsTexts[1],
                                                style: const TextStyle(
                                                  color: AppColors
                                                      .greenAccentLight,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 44,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontFamily: bodyFont,
                                              color:
                                                  AppColors.shadowGrey.shade700,
                                              wordSpacing: -1,
                                              fontSize: 20,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: skillsTexts[2],
                                              ),
                                              TextSpan(
                                                text: skillsTexts[3],
                                                style: const TextStyle(
                                                  color: AppColors.seaBlue,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: skillsTexts[4],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: SkillListBox(),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 36,
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: SkillListBox(
                                              color: AppColors.greenAccentDark,
                                              title: skillSetBText,
                                              list: setBSkillsList,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ))
                        : const SkillsMobileUI(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
