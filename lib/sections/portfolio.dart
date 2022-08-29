import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/widgets/portfolio_block.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    log(width.toString());
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width > 500 ? width / 5.33 : 60,
          vertical: width > 500 ? 160 : 100),
      color: AppColors.shadowGrey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.redAccent, width: 6),
                  right: BorderSide(color: AppColors.redAccent, width: 6),
                ),
              ),
              padding: const EdgeInsets.only(right: 16, bottom: 16),
              child: Text(
                portfolioMainText,
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
          SizedBox(
            height: width > 500 ? 120 : 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(
                portfolioProjects.length,
                (index) => Column(
                      children: [
                        PortfolioBlock(
                          isMobileLayout: width <= 500,
                          project: portfolioProjects.elementAt(index),
                          isAltLayout: index % 2 == 1,
                        ),
                        SizedBox(
                          height: width > 500
                              ? width >= 1200
                                  ? 180
                                  : 120
                              : 80,
                        ),
                      ],
                    )),
            // children: [
            //   PortfolioBlock(isMobileLayout: width <= 500),
            //   SizedBox(
            //     height: width > 500
            //         ? width >= 1200
            //             ? 180
            //             : 120
            //         : 80,
            //   ),
            //   PortfolioBlock(isAltLayout: true, isMobileLayout: width <= 500),
            //   SizedBox(
            //     height: width > 500
            //         ? width >= 1200
            //             ? 180
            //             : 120
            //         : 80,
            //   ),
            //   PortfolioBlock(isMobileLayout: width <= 500),
            // ],
          )
        ],
      ),
    );
  }
}
