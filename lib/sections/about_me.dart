import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';

class AboutMeSection extends StatefulWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  State<AboutMeSection> createState() => _AboutMeSectionState();
}

class _AboutMeSectionState extends State<AboutMeSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Container(color: AppColors.shadowGrey.shade100),
    );
  }
}
