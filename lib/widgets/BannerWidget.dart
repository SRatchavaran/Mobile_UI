import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerWidgets extends StatelessWidget {
  final String name;
  final String icon;
  const BannerWidgets
  (
      {
        required this.name,
        required this.icon,
      }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                'assets/images/${icon}.png', 
                fit: BoxFit.cover,
              ),
            )
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 5,),
              Text(
                "Poppular",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0XFF3E4958),
                ),
                child: Center(
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
