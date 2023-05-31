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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Load Json into ListView")),
      body: Container(color: Colors.green),
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
  }
}
