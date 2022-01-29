import 'package:flutter/material.dart';
import 'package:mobile_ui/widgets/ButtonWidgets.dart';
import 'package:mobile_ui/views/SingInScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XFF1152FD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Image.asset('assets/images/logo.png'),
            ),
            Column(
              children: [
                ButtonWidgets(
                  colorBg: Colors.white,
                  colorText: Color(0XFF1152FD),
                  title: "Sign Up",
                  onTap: ()=>{},
                  height: 60,
                  width: size.width * 0.8,
                ),
                SizedBox(height: size.height * 0.025,),
                ButtonWidgets(
                  colorBg: Color(0XFF1152FD),
                  colorText: Colors.white,
                  title: "Sign In",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ),
                    );
                  },    
                  height: 60,
                  width: size.width * 0.8,
                ),
                SizedBox(height: size.height * 0.025,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
