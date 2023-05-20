//statefull or stateless widgets

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

/*

public
private
class A {
 int _age;

}

mixin 

init

build

dispose


 */

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _userPasswordController = TextEditingController();
  bool _isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Login",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange)),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 8),
            child: TextFormField(
              controller: _userNameController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w800, color: Colors.red),
              //obscureText: true,
              validator: (value) {},
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  //prefixStyle: ,
                  hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.green),
                  border: OutlineInputBorder(),
                  hintText: "Please Enter Email"),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 8),
            child: TextFormField(
              controller: _userPasswordController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w800, color: Colors.red),
              obscureText: _isObscureText,
              validator: (value) {},
              decoration: InputDecoration(
                  // prefixText: "+91",
                  //prefixStyle: ,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      //true > false
                      //flase > true
                      // if (_isObscureText == true) {
                      //   _isObscureText = false;
                      // } else {
                      //   _isObscureText = true;
                      // }
                      setState(() {
                        _isObscureText = !_isObscureText;
                      });
                      // _isObscureText = !_isObscureText;
                      print("data changed $_isObscureText");
                    },
                    child: _isObscureText
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                  ),
                  hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.green),
                  border: OutlineInputBorder(),
                  hintText: "Please Enter Password"),
            ),
          ),
          TextButton(
              onPressed: () {
                print("login button clicked");
              },
              child: Container(
                  width: 250,
                  height: 55,
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      // border: Border.all(widt),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orange)))
        ],
      ),
    );
  }
}

/*
Text - display the information
Button - action
TextField/TextFormFiled - take the input from user

top: 20
left: 8
bottom:8
right:8

Login

email -> 
password -> 

FormValidation

condition statement

i % 2 ? print("even")
 :print("odd")
 ;

if(i % 2){
print("even")
}else{

print("odd")
}

 */