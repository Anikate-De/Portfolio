import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/widgets/portfolio_block.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 300, vertical: 150),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              PortfolioBlock(),
            ],
          )
        ],
      ),
    );
  }
}
