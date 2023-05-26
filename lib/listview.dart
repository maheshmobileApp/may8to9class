import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math' as math;

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<String> names = [
    "Ashwin",
    "mastan",
    "Chaitanya",
    "kartheek",
    "satya",
    "singaraiah",
    "tirumala",
    "vamsi",
    "Mahesh"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewDemo"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Container(
          child: ListView.separated(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Column(
                children: [Text(names[index])],
              ),
              leading: Icon(Icons.no_accounts),
              trailing: Icon(Icons.notification_add),
              onTap: () {
                print("selected item is ${names[index]}");
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Slected ITEM"),
                      content: Text(names[index]),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("OK")),
                        TextButton(onPressed: () {   Navigator.pop(context);}, child: Text("Cancel"))
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 10,
            color: Colors.orange,
          );
        },
      )),
    );
  }
}

//*********************************** ListViie  */
/*

Container(
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0),
            margin: EdgeInsets.all(10),
            height: 200,
            alignment: Alignment.center,
            child: Text(names[index]),
          );

ListView(
        children: List.generate(
            names.length,
            (index) => Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  alignment: Alignment.center,
                  child: Text(names[index]),
                )),
      )
 */
/*
   Container(
            margin: EdgeInsets.all(10),
            height: 200,
            alignment: Alignment.center,
            child: Text(names[0]),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            alignment: Alignment.center,
            child: Text(names[1]),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            alignment: Alignment.center,
            child: Text(names[2]),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            alignment: Alignment.center,
            child: Text(names[3]),
          )

ListView(
                children: [
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.red,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.green,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.orange,
            height: 400,
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.yellow,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.blue,
            height: 300,
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.grey,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.pink,
            height: 200,
          )
                ],
              )
 */