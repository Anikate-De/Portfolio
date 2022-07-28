import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/resources/resources.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shadowGrey.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 300,
            child: Align(
              alignment: Alignment.topCenter,
              child: Lottie.asset(
                downArrowHeadLottie,
                animate: true,
                repeat: false,
                width: 100,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 160.0, bottom: 160),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
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
                          padding: const EdgeInsets.only(right: 16, bottom: 16),
                          child: Text(
                            aboutMeMainText,
                            style: TextStyle(
                              fontFamily: headingFont,
                              fontSize: 24,
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
                              fontSize: 20,
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
                          height: 44,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: bodyFont,
                              color: AppColors.shadowGrey.shade700,
                              wordSpacing: -1,
                              fontSize: 20,
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
                          height: 44,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: bodyFont,
                              color: AppColors.shadowGrey.shade700,
                              wordSpacing: -1,
                              fontSize: 20,
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
                          height: 44,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: bodyFont,
                              color: AppColors.shadowGrey.shade700,
                              wordSpacing: -1,
                              fontSize: 20,
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
                  const SizedBox(
                    width: 200,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: LayoutBuilder(
                            builder: (context, constraints) => Image.asset(
                              meIMG,
                              fit: BoxFit.scaleDown,
                              width: constraints.maxWidth,
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
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   width: 140,
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 100),
          //   child:
          // ),
          const SizedBox(
            width: 300,
          )
        ],
      ),
    );
  }
}
