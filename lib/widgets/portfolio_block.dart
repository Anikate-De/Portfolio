import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/models.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioBlock extends StatefulWidget {
  final bool isAltLayout;
  final bool isMobileLayout;
  final Project project;

  const PortfolioBlock({
    this.isAltLayout = false,
    this.isMobileLayout = false,
    required this.project,
    Key? key,
  }) : super(key: key);

  @override
  State<PortfolioBlock> createState() => _PortfolioBlockState();
}

class _PortfolioBlockState extends State<PortfolioBlock> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return widget.isMobileLayout
        ? Column(
            children: [
              Column(
                crossAxisAlignment: widget.isAltLayout
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        right: widget.isAltLayout ? 0 : 22,
                        top: 4,
                        bottom: 4,
                        left: widget.isAltLayout ? 22 : 0),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                            color: widget.isAltLayout
                                ? Colors.transparent
                                : AppColors.redAccent,
                            width: 5),
                        left: BorderSide(
                            color: widget.isAltLayout
                                ? AppColors.redAccent
                                : Colors.transparent,
                            width: 5),
                      ),
                    ),
                    child: Text(
                      widget.project.name.toUpperCase(),
                      style: TextStyle(
                        fontFamily: headingFont,
                        fontSize: 16,
                        color: AppColors.shadowGrey.shade700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.shadowGrey.shade100,
                      border: Border.fromBorderSide(BorderSide(
                          color: AppColors.shadowGrey.shade500, width: 5)),
                    ),
                    padding: const EdgeInsets.all(24),
                    child: RichText(
                      textAlign:
                          widget.isAltLayout ? TextAlign.start : TextAlign.end,
                      text: TextSpan(
                          style: TextStyle(
                            color: AppColors.shadowGrey.shade600,
                            fontFamily: bodyFont,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.2,
                            height: 1.4,
                            wordSpacing: -1,
                          ),
                          children: [
                            TextSpan(text: widget.project.description[0]),
                            TextSpan(
                              text: widget.project.description[1],
                              style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  launchUrl(
                                      Uri.parse(widget.project.url ??
                                          socialLinks['github']),
                                      mode: LaunchMode.platformDefault);
                                },
                            ),
                            TextSpan(text: widget.project.description[2]),
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    widget.project.skillsLearned.join(' • '),
                    style: TextStyle(
                      fontFamily: bodyFont,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.6,
                      wordSpacing: -2,
                      color: AppColors.shadowGrey.shade700,
                    ),
                  ),
                ],
              ),
            ],
          )
        : Hoverable(
            yOffset: -10,
            child: SizedBox(
              width: double.infinity,
              child: MouseRegion(
                onEnter: (event) => setState(() => isHovering = true),
                onExit: (event) => setState(() => isHovering = false),
                child: width >= 768
                    ? width >= 1100
                        ? Stack(
                            children: [
                              Align(
                                alignment: widget.isAltLayout
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                child: LayoutBuilder(
                                  builder: (context, constraints) => SizedBox(
                                    width: constraints.maxWidth * 0.5,
                                    child: AspectRatio(
                                      aspectRatio: 16 / 9,
                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Image.asset(
                                              widget.project.asset,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                          Positioned.fill(
                                            child: AnimatedContainer(
                                              duration: const Duration(
                                                  milliseconds: 150),
                                              color: AppColors
                                                  .shadowGrey.shade500
                                                  .withOpacity(
                                                      isHovering ? 0 : .5),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: widget.isAltLayout ? 0 : width / 4,
                                    right: widget.isAltLayout ? width / 4 : 0),
                                child: Column(
                                  crossAxisAlignment: widget.isAltLayout
                                      ? CrossAxisAlignment.start
                                      : CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      widget.project.name.toUpperCase(),
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
                                        border: Border.fromBorderSide(
                                            BorderSide(
                                                color: AppColors
                                                    .shadowGrey.shade500,
                                                width: 5)),
                                      ),
                                      padding: const EdgeInsets.all(20),
                                      child: AutoSizeText.rich(
                                        TextSpan(children: [
                                          TextSpan(
                                              text: widget
                                                  .project.description[0]),
                                          TextSpan(
                                            text: widget.project.description[1],
                                            style: const TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                launchUrl(
                                                    Uri.parse(widget
                                                            .project.url ??
                                                        socialLinks['github']),
                                                    mode: LaunchMode
                                                        .platformDefault);
                                              },
                                          ),
                                          TextSpan(
                                              text: widget
                                                  .project.description[2]),
                                        ]),
                                        maxLines: 7,
                                        maxFontSize: 24,
                                        minFontSize: 12,
                                        textAlign: widget.isAltLayout
                                            ? TextAlign.start
                                            : TextAlign.end,
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
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: widget.isAltLayout ? 0 : 120,
                                        right: widget.isAltLayout ? 120 : 0,
                                      ),
                                      child: Text(
                                        widget.project.skillsLearned
                                            .join(' • '),
                                        textAlign: widget.isAltLayout
                                            ? TextAlign.left
                                            : TextAlign.right,
                                        style: TextStyle(
                                          fontFamily: bodyFont,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: -0.6,
                                          wordSpacing: -2,
                                          color: AppColors.shadowGrey.shade700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: widget.isAltLayout
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.end,
                            children: [
                              Text(
                                widget.project.name.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: headingFont,
                                  fontSize: 16,
                                  color: AppColors.shadowGrey.shade700,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              LayoutBuilder(builder: (context, constraints) {
                                double height =
                                    (constraints.maxWidth / 2) * 9 / 16;
                                return SizedBox(
                                  height: height,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    textDirection: widget.isAltLayout
                                        ? TextDirection.rtl
                                        : TextDirection.ltr,
                                    children: [
                                      Expanded(
                                        child: AspectRatio(
                                          aspectRatio: 16 / 9,
                                          child: Stack(
                                            children: [
                                              Positioned.fill(
                                                child: Image.asset(
                                                  widget.project.asset,
                                                  fit: BoxFit.fitWidth,
                                                  filterQuality:
                                                      FilterQuality.none,
                                                ),
                                              ),
                                              Positioned.fill(
                                                child: AnimatedContainer(
                                                  duration: const Duration(
                                                      milliseconds: 150),
                                                  color: AppColors
                                                      .shadowGrey.shade500
                                                      .withOpacity(
                                                          isHovering ? 0 : .5),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  AppColors.shadowGrey.shade100,
                                              border: Border(
                                                bottom: BorderSide(
                                                    color: AppColors
                                                        .shadowGrey.shade500,
                                                    width: 5),
                                                top: BorderSide(
                                                    color: AppColors
                                                        .shadowGrey.shade500,
                                                    width: 5),
                                                left: widget.isAltLayout
                                                    ? BorderSide(
                                                        color: AppColors
                                                            .shadowGrey
                                                            .shade500,
                                                        width: 5)
                                                    : BorderSide.none,
                                                right: widget.isAltLayout
                                                    ? BorderSide.none
                                                    : BorderSide(
                                                        color: AppColors
                                                            .shadowGrey
                                                            .shade500,
                                                        width: 5),
                                              )),
                                          padding: const EdgeInsets.all(20),
                                          child: Center(
                                            child: AutoSizeText.rich(
                                              TextSpan(children: [
                                                TextSpan(
                                                    text: widget.project
                                                        .description[0]),
                                                TextSpan(
                                                  text: widget
                                                      .project.description[1],
                                                  style: const TextStyle(
                                                    color: Colors.blue,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {
                                                          launchUrl(
                                                              Uri.parse(widget
                                                                      .project
                                                                      .url ??
                                                                  socialLinks[
                                                                      'github']),
                                                              mode: LaunchMode
                                                                  .platformDefault);
                                                        },
                                                ),
                                                TextSpan(
                                                    text: widget.project
                                                        .description[2]),
                                              ]),
                                              maxLines: 7,
                                              maxFontSize: 28,
                                              minFontSize: 12,
                                              textAlign: widget.isAltLayout
                                                  ? TextAlign.start
                                                  : TextAlign.end,
                                              style: TextStyle(
                                                color: AppColors
                                                    .shadowGrey.shade600,
                                                fontFamily: bodyFont,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: -0.2,
                                                wordSpacing: -1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                widget.project.skillsLearned.join(' • '),
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
                          )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            widget.project.name.toUpperCase(),
                            style: TextStyle(
                              fontFamily: headingFont,
                              fontSize: 16,
                              color: AppColors.shadowGrey.shade700,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Image.asset(
                                    widget.project.asset,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Positioned.fill(
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 150),
                                    color: AppColors.shadowGrey.shade500
                                        .withOpacity(isHovering ? 0 : .5),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.shadowGrey.shade100,
                                // border: Border.fromBorderSide(
                                //   BorderSide(
                                //       color: AppColors.shadowGrey.shade500,
                                //       width: 5),
                                // ),
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColors.shadowGrey.shade500,
                                    width: 5,
                                  ),
                                  left: BorderSide(
                                    color: AppColors.shadowGrey.shade500,
                                    width: 5,
                                  ),
                                  right: BorderSide(
                                    color: AppColors.shadowGrey.shade500,
                                    width: 5,
                                  ),
                                )),
                            padding: const EdgeInsets.all(20),
                            child: AutoSizeText.rich(
                              TextSpan(children: [
                                TextSpan(text: widget.project.description[0]),
                                TextSpan(
                                  text: widget.project.description[1],
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      launchUrl(
                                          Uri.parse(widget.project.url ??
                                              socialLinks['github']),
                                          mode: LaunchMode.platformDefault);
                                    },
                                ),
                                TextSpan(text: widget.project.description[2]),
                              ]),
                              maxLines: 7,
                              maxFontSize: 24,
                              minFontSize: 12,
                              textAlign: widget.isAltLayout
                                  ? TextAlign.start
                                  : TextAlign.end,
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
                            widget.project.skillsLearned.join(' • '),
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
            ),
          );
  }
}
