import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {super.key,
      this.mHeight,
      this.mWidth,
      this.backgroundColor,
      required this.title,
      required this.onTapped});

  final Color? backgroundColor;
  final Widget title;
  final Function() onTapped;
  final double? mHeight;
  final double? mWidth;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: onTapped,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
          alignment: Alignment.center,
          height: mHeight ?? size.height * .05,
          width: mWidth ?? size.width * .4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: backgroundColor ?? Colors.grey.shade300,
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: -const Offset(3, 3),
                color: Colors.white,
              ),
              BoxShadow(
                offset: const Offset(3, 3),
                color: Colors.grey.shade500,
                //Color(0xffa7a9af),
              ),
            ],
          ),
          child: FittedBox(
            child: title,
          )),
    );
  }
}
