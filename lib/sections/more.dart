import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';

class MoreSection extends StatelessWidget {
  const MoreSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              moreTexts[0],
              style: TextStyle(
                fontFamily: bodyFont,
                color: AppColors.shadowGrey.shade200,
                fontWeight: FontWeight.bold,
                wordSpacing: -1,
                fontSize: 26,
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            Text(
              moreTexts[1],
              style: TextStyle(
                fontFamily: headingFont,
                color: AppColors.shadowGrey.shade200,
                wordSpacing: -1,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              moreTexts[2],
              style: TextStyle(
                fontFamily: headingFont,
                color: AppColors.shadowGrey.shade50,
                wordSpacing: -1,
                fontSize: 42,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
