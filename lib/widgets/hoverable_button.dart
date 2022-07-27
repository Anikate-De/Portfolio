import 'package:flutter/material.dart';
import 'package:portfolio/resources/resources.dart';

class HoverableButton extends StatefulWidget {
  final VoidCallback onPressed;

  const HoverableButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  State<HoverableButton> createState() => _HoverableButtonState();
}

class _HoverableButtonState extends State<HoverableButton> {
  final Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };

  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(0, -5, 0);

  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kThemeChangeDuration,
      transform: isHovering ? hoverTransform : nonHoverTransform,
      child: TextButton(
        onPressed: widget.onPressed,
        onHover: (isHovering) {
          setState(() {
            this.isHovering = isHovering;
          });
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.resolveWith((states) {
            if (states.any(interactiveStates.contains)) {
              return 16;
            } else {
              return 0;
            }
          }),
          shadowColor: MaterialStateProperty.all(AppColors.shadowGrey.shade50),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 36, vertical: 28)),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.any(interactiveStates.contains)) {
              return (AppColors.shadowGrey.shade500);
            } else {
              return (AppColors.shadowGrey.shade50);
            }
          }),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.any(interactiveStates.contains)) {
              return (AppColors.shadowGrey.shade50);
            } else {
              return (AppColors.shadowGrey.shade600);
            }
          }),
          side: MaterialStateProperty.resolveWith((states) {
            if (states.any(interactiveStates.contains)) {
              return (BorderSide(
                  color: AppColors.shadowGrey.shade50, width: 4));
            } else {
              return (BorderSide.none);
            }
          }),
          shape: MaterialStateProperty.all(
            const ContinuousRectangleBorder(borderRadius: BorderRadius.zero),
          ),
        ),
        child: const Text(
          aboutMeMainText,
          style: TextStyle(
            fontFamily: headingFont,
            fontSize: 18,
            letterSpacing: -0.6,
            wordSpacing: -2,
          ),
        ),
      ),
    );
  }
}
