import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CreateSpecilities extends StatefulWidget {
  const CreateSpecilities({super.key});

  @override
  State<CreateSpecilities> createState() => _CreateSpecilitiesState();
}

class _CreateSpecilitiesState extends State<CreateSpecilities> {
  TextEditingController _specilityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Request"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 8),
          child: TextFormField(
            controller: _specilityController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w800, color: Colors.red),
            //obscureText: true,
            validator: (value) {},
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                //prefixStyle: ,
                hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: Colors.green),
                border: OutlineInputBorder(),
                hintText: "Please Enter Specility"),
          ),
        ),
        TextButton(
            onPressed: () async {
              //call the api for post the data
              final body = {
                "created_by": "Mahesh",
                "speciality_name": _specilityController.text
              };

              //step1: create url
              final url =
                  "https://doctopad-a2d-dev.el.r.appspot.com/api/v1/doctor_specialities";
              //step 2: create dio object
              final dio = Dio(); // create dio object

              //step 3: if have optins params pass the parameters like below
              // dio.options.headers = {};
              // dio.options.baseUrl = "";
              // dio.options.connectTimeout = Duration(seconds: 180);
              // dio.options.method = "PUT";

              //step 4: call the api based on http method type
              final response = await dio.post(url, data: body);
              print(response.statusCode);

              //step 5: check the status code
              if (response.statusCode == 200) {
                print(response.data);
              } else {}
            },
            child: Container(
                width: 250,
                height: 55,
                alignment: Alignment.center,
                child: Text(
                  "Add Specility",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                decoration: BoxDecoration(
                    // border: Border.all(widt),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.orange)))
      ]),
    );
  }
}
