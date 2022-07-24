import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/resources/resources.dart';

class IntroSection extends StatefulWidget {
  const IntroSection({Key? key}) : super(key: key);

  @override
  State<IntroSection> createState() => _IntroSectionState();
}

class _IntroSectionState extends State<IntroSection> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          homeBGSVG,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
