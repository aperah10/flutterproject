import 'package:flutter/material.dart';
import 'package:uis/Widget/formWidget.dart';
import 'package:uis/screens/home_screen.dart';
import 'package:uis/screens/signup_screen.dart';


class LoginScreen extends StatefulWidget {
  @override
 _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: SingleChildScrollView(
        child: initScreen(context),
      )
      ,
    );
  }

  initScreen(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Container(
          margin: EdgeInsets.only(left: 30.0, top: 50.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.keyboard_backspace,
              color: Color(0xffc5ccd6),
              size: 30.0,
            ),
          )
        ),

        // Login Text Section
        Container(
          margin: EdgeInsets.only(top: 20.0, left: 30.0),
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 30.0
            ),
          ),
        ),

        // Email Edit text
        FieldF(hintText:'Email',inputType:TextInputType.emailAddress),
          // Password Edit text
        FieldF(obscureTxt:true,hintText:'Password',inputType:TextInputType.visiblePassword),
         // Login Button
        Center(child: SubmitButton(btnName: 'Submit' , createPage:()=> HomeScreen(),)),

        ExtraButton(btnName: 'SignUp',createPage:()=> SignUpScreen(),)
      ],
    );
  }
  

 
}