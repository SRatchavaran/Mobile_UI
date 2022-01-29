import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final String title;
  final String hintText;
  final double width;
  final bool isPassword;
  final bool isSearch;
  final TextEditingController textEditingController;

  InputTextWidget
  (
      {
        this.title = "",
        required this.hintText,
        required this.width,
        this.isPassword = false,
        this.isSearch = false,
        required this.textEditingController,
      }
  );
  final formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title != "" ? Text(
            title, 
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16,
              decoration: TextDecoration.none,
            ),
          ): Container(),
          SizedBox(height: 10,),
          Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Container(
              width: width,
              child: GestureDetector(
                child: TextFormField(
                  validator: (value) => !isPassword && !isSearch ? validateEmail(value) : null,
                  obscureText: isPassword ?  !_passwordVisible : _passwordVisible,
                  onChanged: (value) {},
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: Color(0XFFD5DDE0),
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      decoration: TextDecoration.none,
                    ),
                    filled: true,
                    fillColor: Color(0XFFF7F8F9), 
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFFD5DDE0),
                        width: 0.5
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0XFFD5DDE0),
                        width: 0.5
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 0.5
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 0.5
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    prefixIcon: isSearch ? IconButton(
                      icon: Image.asset('assets/images/searchIcon.png',),
                      onPressed: ()=>{},
                    ) : null,
                    suffixIcon: !isPassword ? 
                      null :
                      IconButton(
                        icon:  _passwordVisible ? Icon(Icons.visibility) : Image.asset('assets/images/seeIcon.png',),
                        onPressed: (){
                          _passwordVisible = !_passwordVisible;
                          (context as Element).markNeedsBuild();
                        },
                      ),
                  ),
                  controller: textEditingController,
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
  
  String validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return 'Enter email address';
    else
      return "";
  }
}
