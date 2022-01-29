import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonIconWidgets extends StatelessWidget {
  final Color colorBg;
  final VoidCallback onTap;
  final String icon;
  final double size;
  final String header;
  const ButtonIconWidgets
  (
      {
        required this.colorBg,
        required this.onTap,
        required this.icon,
        required this.size,
        this.header = "",
      }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>{},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: size,
            width: size,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colorBg,
                ),
                child: Center(
                  child: Image.asset('assets/images/${icon}.png',),
                ),
              ),
            ),
          ),
          header != "" ? Column(
            children: [
              SizedBox(height: 10,),
              Text(header)
            ],
          ) : Container()
        ],
      ),
    );
  }
}
