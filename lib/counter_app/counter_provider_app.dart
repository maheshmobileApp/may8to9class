import 'package:class8to9/counter_app/counter_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterAppWithPrvider extends StatelessWidget {
  const CounterAppWithPrvider({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App With Provider"),
      ),
      body: Row(children: [
        TextButton(
            onPressed: () {
              //increment the counter value
              counterProvider.increment();
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
        Text("counter value ${counterProvider.counter}"),
        TextButton(
            onPressed: () {
              //Decrement the counter value
              counterProvider.decrement();
              // print("decrement value $_counterValue");
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
