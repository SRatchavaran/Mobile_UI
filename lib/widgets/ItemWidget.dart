import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final List item;
  const ItemWidget
  (
      {
        required this.item,
      }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4), 
      child: Container(
        padding: EdgeInsets.all(8),
        height: 233,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              height: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0XFFF7F8F9),
                border: Border.all(color: Color(0XFFD5DDE0))
              ),
              child:  Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/${item[0]}.png', 
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: ()=>{}, 
                      icon: Image.asset('assets/images/favIcon.png',),
                    )
                  )
                ],
              )
            ),
            SizedBox(height: 2,),
            Text(
              item[1],
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              height: 20,
              width: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0XFFD5DDE0),
              ),
              child: Center(
                child: Text(
                  "${item[3]} colors",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                )
              )
            ),
            SizedBox(height: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${item[2]}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  onPressed: ()=>{}, 
                  icon: Image.asset('assets/images/plusIcon.png',),
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
