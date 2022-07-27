import 'package:flutter/material.dart';

import '../resources/resources.dart';

class SkillListBox extends StatefulWidget {
  final Color color;
  final String title;
  final List<String> list;

  const SkillListBox({
    this.color = AppColors.greenAccentLight,
    this.title = skillSetAText,
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
    return MouseRegion(
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
            duration: const Duration(milliseconds: 300),
            margin: EdgeInsets.only(
                top: isHovering ? hoverBorderGap : defaultBorderGap,
                left: isHovering ? hoverBorderGap : defaultBorderGap,
                bottom: isHovering ? hoverBorderGap / 2 : 0,
                right: isHovering ? hoverBorderGap / 2 : 0),
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.fromBorderSide(
                BorderSide(color: AppColors.shadowGrey.shade400, width: 6),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: defaultBorderGap, bottom: defaultBorderGap),
            child: Container(
              height: 220,
              color: widget.color,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontFamily: headingFont,
                        fontSize: 14,
                        letterSpacing: -0.6,
                        wordSpacing: -2,
                        color: AppColors.shadowGrey.shade50,
                      ),
                    ),
                    Divider(
                      thickness: 5,
                      height: 50,
                      color: AppColors.shadowGrey.shade50.withOpacity(0.4),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widget.list
                          .map(
                            (text) => Column(
                              children: [
                                Text(
                                  text,
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
        ],
      ),
    );
  }
}
