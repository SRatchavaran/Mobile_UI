import 'package:flutter/material.dart';
import 'package:mobile_ui/views/HomeScreen.dart';
import 'package:mobile_ui/views/SplashScreen.dart';
import 'package:mobile_ui/widgets/ButtonWidgets.dart';
import 'package:mobile_ui/widgets/InputTextWidget.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController emailEditingController  = TextEditingController(),
    passwordEditingController  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: size.height * 0.125,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Sing In", 
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 26,
            decoration: TextDecoration.none,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back, 
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:SingleChildScrollView(
        child: Container(
          height: size.height * 0.875,
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.075),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Please fill E-mail & password to login your\nShopy application account.", 
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    decoration: TextDecoration.none,
                  ),
                ),
                InputTextWidget(
                  width: size.width * 0.9,
                  title: "E-mail", 
                  hintText: "example@gmail.com",
                  textEditingController: emailEditingController,
                ),
                InputTextWidget(
                  width: size.width * 0.9,
                  title: "Password", 
                  hintText: "********",
                  isPassword: true,
                  textEditingController: passwordEditingController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Image.asset('assets/images/isToggle.png',),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          "Remember",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
                ButtonWidgets(
                  colorBg: Color(0XFF1152FD),
                  colorText: Colors.white,
                  title: "Sign In",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  height: 60,
                  width: size.width,
                ),
                SizedBox(height: size.height*0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 1, 
                      width: size.width / 2 - (size.width * 0.2),
                      color: Color(0XFFD5DDE0),
                    ),
                    Text(
                      "Or sign in with",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                    ),
                    Container(
                      height: 1, 
                      width: size.width / 2 - (size.width * 0.2),
                      color: Color(0XFFD5DDE0),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonWidgets(
                      colorBg: Color(0XFFD5DDE0),
                      colorText: Colors.white,
                      icon: "facebookIcon",
                      onTap: () {},
                      height: 60,
                      width: size.width/2 - (size.width * 0.1),
                    ),
                    ButtonWidgets(
                      colorBg: Color(0XFFD5DDE0),
                      colorText: Colors.white,
                      icon: "googleIcon",
                      onTap: () {},
                      height: 60,
                      width: size.width/2 - (size.width * 0.1),
                    ),
                  ],
                ), 
                SizedBox(height: size.height * 0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SplashScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.05,),
              ],
            ),
        )
      )
    );
  }

}