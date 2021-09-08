import 'package:flutter/material.dart';

import '../constant.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: headerText,
              fontSize: 33.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(children: <Widget>[
        SizedBox(
          height: 135.0,
        ),
        Padding(
          //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
              // border: OutlineInputBorder(),
              border:UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: normalText,
                  )
              ),
              labelText: 'Email',
              hintText: 'Enter valid email id as abc@gmail.com',
              labelStyle: TextStyle(
                color: headerText,
              ),
              hintStyle: TextStyle(color: normalText),
            ),
            style: TextStyle(
              color: normalText,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 15, bottom: 0),
          //padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter secure password',
              labelStyle: TextStyle(
                color: headerText,
              ),
              hintStyle: TextStyle(color: normalText),
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        TextButton(
          onPressed: () {
            //TODO FORGOT PASSWORD SCREEN
          },
          child: Text(
            'Forgot Password',
            style: TextStyle(color: normalText, fontSize: 15),
          ),
        ),
        Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(100)),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        SizedBox(
          height: 130,
        ),
        Text('New User? Create Account',style: TextStyle(
          color: normalText,
          fontSize: 17.0,
        ),),
      ]),
    );
  }
}