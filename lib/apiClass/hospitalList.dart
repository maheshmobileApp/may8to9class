import 'package:class8to9/apiClass/hopspital_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HospitalList extends StatefulWidget {
  const HospitalList({super.key});

  @override
  State<HospitalList> createState() => _HospitalListState();
}

class _HospitalListState extends State<HospitalList> {
  List<Body> hospitalList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Call the api and display the data into ListView")),
      body: ListView.separated(
        itemCount: hospitalList.length,
        itemBuilder: (context, index) {
          final hospitalData = hospitalList[index];
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getTheHospitals();
  }

  /*
  sync
  async 
   */

  void getTheHospitals() async {
    //step1: create url
    final url = "https://doctopad-a2d-dev.el.r.appspot.com/api/v1/hospitals";
    //step 2: create dio object
    final dio = Dio(); // create dio object

    //step 3: if have optins params pass the parameters like below
    // dio.options.headers = {};
    // dio.options.baseUrl = "";
    // dio.options.connectTimeout = Duration(seconds: 180);
    // dio.options.method = "PUT";

    //step 4: call the api based on http method type
    final response = await dio.get(url);
    print(response.statusCode);

    //step 5: check the status code
    if (response.statusCode == 200) {
      print(response.data);

      //step 6: convert the json data to model class
      final hospitalData = HospitalData.fromJson(response.data);
      setState(() {
        //stpe 7: assgin the data to local variable
        hospitalList = hospitalData.body!;
      });
    } else {}

    //  try {

    //  } catch (e) {

    //  }
  }

/*
retruntype functionName(){

}
 */
}

/*
 final url = "https://doctopad-a2d-dev.el.r.appspot.com/api/v1/hospitals"

10 api

 */
