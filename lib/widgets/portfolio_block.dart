import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';

class PortfolioBlock extends StatefulWidget {
  const PortfolioBlock({Key? key}) : super(key: key);

  @override
  State<PortfolioBlock> createState() => _PortfolioBlockState();
}

class _PortfolioBlockState extends State<PortfolioBlock> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: AppColors.shadowGrey.shade300,
              ),
            ),
          ),
          Positioned.fill(
            left: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BISCUIT BEACON',
                  style: TextStyle(
                    fontFamily: headingFont,
                    fontSize: 16,
                    color: AppColors.shadowGrey.shade700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.shadowGrey.shade100,
                    border: Border.fromBorderSide(BorderSide(
                        color: AppColors.shadowGrey.shade500, width: 5)),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: AppColors.shadowGrey.shade600,
                      fontFamily: bodyFont,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.2,
                      wordSpacing: -1,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Flutter (Dart) • Google Maps • Firebase',
                  style: TextStyle(
                    fontFamily: bodyFont,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.6,
                    wordSpacing: -2,
                    color: AppColors.shadowGrey.shade700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
