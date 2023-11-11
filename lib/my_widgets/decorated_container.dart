import 'package:flutter/material.dart';

class DecoratedContainer extends StatelessWidget {
  const DecoratedContainer(
      {super.key,
      required this.myChild,
      required this.backgroundColor,
      this.shadowLeftColor = Colors.white,
      required this.shadowRightColor,
      this.myHeight,
      this.myWidth,
      this.topLeftCurve = 6,
      this.topRightCurve = 6,
      this.bottomLeftCurve = 6,
      this.bottomRightCurve = 6,
      this.innerHorizontalPadding = 4,
      this.innerVerticalPadding = 4});
  final Widget myChild;
  final double? topLeftCurve;
  final double? topRightCurve;
  final double? bottomLeftCurve;
  final double? bottomRightCurve;
  final double? myHeight;
  final double? myWidth;
  final Color backgroundColor;
  final Color? shadowLeftColor;
  final Color shadowRightColor;
  final double innerHorizontalPadding;
  final double innerVerticalPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: myHeight,
        width: myWidth,
        padding: EdgeInsets.symmetric(
            horizontal: innerHorizontalPadding, vertical: innerVerticalPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeftCurve!),
              topRight: Radius.circular(topRightCurve!),
              bottomLeft: Radius.circular(bottomLeftCurve!),
              bottomRight: Radius.circular(bottomRightCurve!)),
          color: backgroundColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: const Offset(-2, -2),
              color: shadowLeftColor!,
              spreadRadius: 2,
              blurRadius: 1,
            ),
            BoxShadow(offset: const Offset(2, 2), color: shadowRightColor),
          ],
        ),
        child: myChild);
  }
}
