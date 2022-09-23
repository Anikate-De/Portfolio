import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';

class MoreSection extends StatelessWidget {
  const MoreSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width > 500 ? width / 5.33 : 30, vertical: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              moreTexts[0],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: bodyFont,
                color: AppColors.shadowGrey.shade200,
                fontWeight: FontWeight.bold,
                wordSpacing: -1,
                fontSize: width > 500 ? 26 : 20,
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            Text(
              moreTexts[1],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: headingFont,
                color: AppColors.shadowGrey.shade200,
                wordSpacing: -1,
                fontSize: width > 500 ? 22 : 20,
                height: 1.6,
              ),
            ),
            SizedBox(
              height: width > 500 ? 36 : 70,
            ),
            AutoSizeText(
              moreTexts[2],
              maxLines: 1,
              style: TextStyle(
                fontFamily: headingFont,
                color: AppColors.shadowGrey.shade50,
                wordSpacing: -1,
                fontSize: width > 500 ? 42 : 36,
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
