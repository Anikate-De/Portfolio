import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';

import '../resources/resources.dart';

class SkillListBox extends StatefulWidget {
  final Color color;
  final List<String> list;

  const SkillListBox({
    this.color = AppColors.greenAccentLight,
    this.list = setASkillsList,
    Key? key,
  }) : super(key: key);

  @override
  State<SkillListBox> createState() => _SkillListBoxState();
}

class _SkillListBoxState extends State<SkillListBox> {
  double defaultBorderGap = 24;
  double hoverBorderGap = 16;
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Hoverable(
      yOffset: -10,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovering = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovering = false;
          });
        },
        child: Stack(
          children: [
            AnimatedContainer(
              duration: kThemeChangeDuration,
              margin: EdgeInsets.only(
                  top: isHovering ? hoverBorderGap : defaultBorderGap,
                  left: isHovering ? hoverBorderGap : defaultBorderGap,
                  bottom: isHovering ? hoverBorderGap / 2 : 0,
                  right: isHovering ? hoverBorderGap / 2 : 0),
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                  BorderSide(color: AppColors.shadowGrey.shade400, width: 6),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.only(
                    right: defaultBorderGap, bottom: defaultBorderGap),
                child: Container(
                  height: 160,
                  color: widget.color,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: widget.list
                              .map(
                                (text) => Column(
                                  children: [
                                    AutoSizeText(
                                      text,
                                      maxLines: 1,
                                      minFontSize: 10,
                                      maxFontSize: 24,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: bodyFont,
                                        color: AppColors.shadowGrey.shade50,
                                        wordSpacing: -1,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    )
                                  ],
                                ),
                              )
                              .toList(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
