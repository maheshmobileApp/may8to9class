import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counterValue = 0;
  @override
  Widget build(BuildContext context) {
    print("called build method");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Row(children: [
        TextButton(
            onPressed: () {
              //increment the counter value

              setState(() {
                _counterValue++;
              });
              print("increment value $_counterValue");
            },
            child: Container(
                width: 80,
                height: 80,
                alignment: Alignment.center,
                child: Text(
                  "+",
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                    // border: Border.all(widt),
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.orange))),
        Text("counter value $_counterValue"),
        TextButton(
            onPressed: () {
              //Decrement the counter value

              setState(() {
                _counterValue--;
              });
              print("decrement value $_counterValue");
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  // border: Border.all(widt),
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.blue),
              child: Text(
                "-",
                style: TextStyle(color: Colors.white),
              ),
              width: 80,
              height: 80,
            ))
      ]),
    );
  }
}

/*
action +,-
text
 */