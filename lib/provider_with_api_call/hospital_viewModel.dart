import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../apiClass/hopspital_model.dart';

class HospitalProvider with ChangeNotifier {
  List<Body> hospitalList = [];

  HospitalProvider() {
    getTheHospitals();
  }
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
      //setState(() {
      //stpe 7: assgin the data to local variable
      hospitalList = hospitalData.body!;
      //});
      notifyListeners();
    } else {}

    //  try {

    //  } catch (e) {

    //  }
  }
}
