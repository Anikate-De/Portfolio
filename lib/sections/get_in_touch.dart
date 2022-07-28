import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/resources/resources.dart';
import 'package:portfolio/widgets/hoverable.dart';

class GetInTouchSection extends StatefulWidget {
  const GetInTouchSection({Key? key}) : super(key: key);

  @override
  State<GetInTouchSection> createState() => _GetInTouchSectionState();
}

class _GetInTouchSectionState extends State<GetInTouchSection> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding:
          const EdgeInsets.only(left: 400, right: 400, top: 140, bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            getInTouchMainText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: headingFont,
              fontSize: 26,
              letterSpacing: -0.6,
              wordSpacing: -2,
              color: AppColors.shadowGrey.shade50,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              getInTouchText1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: bodyFont,
                fontSize: 22,
                letterSpacing: -0.6,
                wordSpacing: -2,
                color: AppColors.shadowGrey.shade300,
              ),
            ),
          ),
          const SizedBox(
            height: 72,
          ),
          Center(
            child: Hoverable(
              yOffset: -8,
              child: MouseRegion(
                onEnter: ((event) {
                  setState(() {
                    isHovering = true;
                  });
                }),
                onExit: ((event) {
                  setState(() {
                    isHovering = false;
                  });
                }),
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {
                    log('Email was clicked');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 5,
                            color: AppColors.shadowGrey.shade50,
                          ),
                        ),
                      ),
                      child: Text(
                        getInTouchEmail,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: headingFont,
                          fontSize: 24,
                          letterSpacing: -0.6,
                          wordSpacing: -2,
                          color: AppColors.shadowGrey.shade50,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 72,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hoverable(
                child: TextButton(
                    onPressed: () {
                      log('Email was clicked');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SvgPicture.asset(
                        githubIconSVG,
                        height: 32,
                      ),
                    )),
              ),
              const SizedBox(
                width: 40,
              ),
              Hoverable(
                child: TextButton(
                    onPressed: () {
                      log('Email was clicked');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SvgPicture.asset(
                        instagramIconSVG,
                        height: 32,
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 72,
          ),
          Text(
            getInTouchBuiltWithText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: bodyFont,
              fontSize: 16,
              letterSpacing: -0.6,
              wordSpacing: -2,
              color: AppColors.shadowGrey.shade300,
            ),
          ),
        ],
      ),
    );
  }
}
