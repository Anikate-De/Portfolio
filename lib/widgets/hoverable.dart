import 'package:flutter/material.dart';

class Hoverable extends StatefulWidget {
  final Widget child;
  final double yOffset;

  const Hoverable({
    required this.child,
    this.yOffset = -5,
    Key? key,
  }) : super(key: key);

  @override
  State<Hoverable> createState() => _HoverableState();
}

class _HoverableState extends State<Hoverable> {
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
      child: AnimatedContainer(
          duration: kThemeChangeDuration,
          transform: isHovering
              ? (Matrix4.identity()..translate(0, widget.yOffset, 0))
              : Matrix4.identity()
            ..translate(0, 0, 0),
          child: widget.child),
    );
  }
}
