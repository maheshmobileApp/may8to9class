import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green,
        child: Column(children: [
          TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, "/first");//wrong
                Navigator.pop(context);
              },
              child: Container(
                  width: 200,
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    "Back to previous screen",
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                      // border: Border.all(widt),
                      //borderRadius: BorderRadius.circular(40),
                      color: Colors.orange)))
        ]),
      ),
    );
  }
}
