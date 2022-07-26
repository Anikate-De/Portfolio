import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';
import 'dart:math' as math;

class BulletPointText extends StatelessWidget {
  final String text;

  const BulletPointText({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 7.0, right: 18),
          child: Transform.rotate(
              angle: math.pi / 4,
              child: Container(
                height: 8,
                width: 8,
                color: AppColors.seaBlue,
              )),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: bodyFont,
              color: AppColors.shadowGrey.shade700,
              wordSpacing: -1,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
