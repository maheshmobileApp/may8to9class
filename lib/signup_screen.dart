import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailNameController = TextEditingController();
  TextEditingController _phoneNameController = TextEditingController();
  TextEditingController _passwordNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign up Screen")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _userNameController,
                  decoration: InputDecoration(
                    hintText: "Please Enter User Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter user name";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailNameController,
                  decoration: InputDecoration(
                    hintText: "Please Enter email Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter email";
                    } else {
                      final bool emailValid = isValidEmail(value);
                      return emailValid ? null : "Please enter valid email";
                    }
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordNameController,
                  decoration: InputDecoration(
                    hintText: "Please Enter password ",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter password";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _phoneNameController,
                  decoration: InputDecoration(
                    hintText: "Please Enter phone ",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter phone number";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      print("login button clicked");
                      if (_formKey.currentState!.validate()) {
                        //sign up api call
                      }
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
                            color: Colors.orange))),
          
                    Container(
                      margin: EdgeInsets.all(20),
                      color: Colors.red,
                      height: 100,
                    ), Container(
                      margin: EdgeInsets.all(20),
                      color: Colors.green,
                      height: 100,
                    ), Container(
                      margin: EdgeInsets.all(20),
                      color: Colors.red,
                      height: 100,
                    ), Container(
                      margin: EdgeInsets.all(20),
                      color: Colors.yellow,
                      height: 400,
                    ), Container(
                      margin: EdgeInsets.all(20),
                      color: Colors.red,
                      height: 400,
                    ), Container(
                      margin: EdgeInsets.all(20),
                      color: Colors.orange,
                      height: 400,
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
  //
  bool isValidEmail(String value){
    return  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value);
  }
}
