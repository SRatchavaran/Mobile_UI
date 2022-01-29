import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  final Color colorBg;
  final Color colorText;
  final String title;
  final VoidCallback onTap;
  final double height;
  final double width;
  final String icon;
  final double sizeFont;
  final double circle;
  const ButtonWidgets
  (
      {
        required this.colorBg,
        required this.colorText,
        this.title = "",
        required this.onTap,
        required this.height,
        required this.width,
        this.icon = "",
        this.sizeFont = 0,
        this.circle = 0,
      }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(circle == 0 ? 15 : circle),
            color: colorBg,
          ),
          child: Center(
            child: title != "" ? Text(
              title,
              style: TextStyle(
                color: colorText,
                fontSize: sizeFont == 0 ? 20 : sizeFont,
                fontWeight: FontWeight.w700
              ),
              textAlign: TextAlign.center,
            ) : Image.asset('assets/images/${icon}.png',),
          ),
        ),
      ),
    );
  }
}
