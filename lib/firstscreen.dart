import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/second");
            },
            child: Container(
                width: 200,
                height: 80,
                alignment: Alignment.center,
                child: Text(
                  "Navigate To Second Screen",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                    // border: Border.all(widt),
                    //borderRadius: BorderRadius.circular(40),
                    color: Colors.orange))),
      ),
    );
  }
}
