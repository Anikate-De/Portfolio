import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/resources/resources.dart';

import '../widgets/widgets.dart';

class ProductivitySection extends StatefulWidget {
  const ProductivitySection({Key? key}) : super(key: key);

  @override
  State<ProductivitySection> createState() => _ProductivitySectionState();
}

class _ProductivitySectionState extends State<ProductivitySection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shadowGrey.shade100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: Align(
              alignment: const Alignment(0.3, 0.5),
              child: Lottie.asset(
                rightArrowHeadLottie,
                animate: true,
                repeat: false,
                width: 150,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 100, right: 300),
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
                          padding: const EdgeInsets.only(right: 16, bottom: 16),
                          child: Text(
                            whatIOfferMainText,
                            style: TextStyle(
                              fontFamily: headingFont,
                              fontSize: 24,
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
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Table(
                        columnWidths: const {
                          0: FlexColumnWidth(3),
                          1: FlexColumnWidth(1),
                          2: FlexColumnWidth(3),
                        },
                        children: [
                          TableRow(children: [
                            BulletPointText(text: whatIOfferPointsList[0]),
                            const SizedBox(width: 30),
                            BulletPointText(text: whatIOfferPointsList[1]),
                          ]),
                          const TableRow(children: [
                            SizedBox(height: 20),
                            SizedBox(width: 30),
                            SizedBox(
                              height: 20,
                            )
                          ]),
                          TableRow(children: [
                            BulletPointText(text: whatIOfferPointsList[2]),
                            const SizedBox(width: 30),
                            BulletPointText(text: whatIOfferPointsList[3]),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
