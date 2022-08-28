import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/widgets/widgets.dart';

class SkillsTabUI extends StatelessWidget {
  const SkillsTabUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.greenAccentLight, width: 6),
                right: BorderSide(color: AppColors.greenAccentLight, width: 6),
              ),
            ),
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            child: Text(
              skillsMainText,
              style: TextStyle(
                fontFamily: headingFont,
                fontSize: 20,
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
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontFamily: bodyFont,
              color: AppColors.shadowGrey.shade700,
              wordSpacing: -1,
              fontSize: 18,
            ),
            children: <TextSpan>[
              TextSpan(
                text: skillsTexts[0],
              ),
              TextSpan(
                text: skillsTexts[1],
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
              fontSize: 18,
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
        const SizedBox(
          height: 60,
        ),
        MediaQuery.of(context).size.width >= 768
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(child: SkillListBox()),
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 80,
                        ),
                        SkillListBox(
                          color: AppColors.greenAccentDark,
                          title: skillSetBText,
                          list: setBSkillsList,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                children: const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 100.0),
                      child: SkillListBox(),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 100.0),
                      child: SkillListBox(
                        color: AppColors.greenAccentDark,
                        title: skillSetBText,
                        list: setBSkillsList,
                      ),
                    ),
                  ),
                ],
              )
      ],
    );
  }
}