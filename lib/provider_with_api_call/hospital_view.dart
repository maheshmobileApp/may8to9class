import 'package:class8to9/apiClass/hospitalList.dart';
import 'package:class8to9/provider_with_api_call/hospital_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../counter_app/counter_viewModel.dart';

class HospitalsListView extends StatelessWidget {
  const HospitalsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final hosptialProvider = Provider.of<HospitalProvider>(context);
    return Scaffold(
      appBar: AppBar(
          title: Text("Call the api and display the data into ListView")),
      body: ListView.separated(
        itemCount: hosptialProvider.hospitalList.length,
        itemBuilder: (context, index) {
          final hospitalData = hosptialProvider.hospitalList[index];
          return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Hospital  Name:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(hospitalData.name ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Hospital  Email:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(hospitalData.email ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Hospital  Phone Number:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(hospitalData.phone ?? ""),
                    ],
                  ),
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
}
