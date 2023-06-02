import 'dart:convert';

import 'package:class8to9/students_modelClass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoadJsonToListView extends StatefulWidget {
  const LoadJsonToListView({super.key});

  @override
  State<LoadJsonToListView> createState() => _LoadJsonToListViewState();
}

class _LoadJsonToListViewState extends State<LoadJsonToListView> {
  List<Data> students = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Load Json into ListView")),
      body: ListView.separated(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final studentInfo = students[index];
          return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  index == 0
                      ? Image.asset(
                          "assets/images/kolhi.jpg",
                          width: 200,
                          height: 200,
                        )
                      : SizedBox(),
                  Row(
                    children: [
                      Text(
                        "Student Name:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(studentInfo.studentame ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Student Admission Number:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(studentInfo.admissionNo ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Student Class Name:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(studentInfo.classname ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Student Section:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(studentInfo.section ?? ""),
                    ],
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 5,
            color: Colors.transparent,
          );
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadJsonFile();
  }

  loadJsonFile() async {
    final resultData = await rootBundle.loadString("assets/studentsData.json");
    final resultResponse = await json.decode(resultData);
    final studentData = StudentsData.fromJson(resultResponse);
    print(resultResponse);
    print(studentData.data);
    setState(() {
      students = studentData.data!;
    });
  }
}
