import 'package:class8to9/database_helper.dart';
import 'package:class8to9/widgets/app_input_textField.dart';
import 'package:flutter/material.dart';

class SqfliteExample extends StatefulWidget {
  const SqfliteExample({super.key});

  @override
  State<SqfliteExample> createState() => _SqfliteExampleState();
}

class _SqfliteExampleState extends State<SqfliteExample> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sqlite Sample")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppInputTextField(
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    labelText: "User Name",
                    hintText: "Enter User Name"),
                AppInputTextField(
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    labelText: "User Email",
                    hintText: "Enter User Email"),
                AppInputTextField(
                    controller: _addressController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    labelText: "Address",
                    hintText: "Enter Address"),
                AppInputTextField(
                    controller: _phoneController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter phone number';
                      }
                      return null;
                    },
                    labelText: "Phone ",
                    hintText: "Enter Phone"),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Save User Data'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final dataBase = await DatabaseHelper.internal().getDatabase();
      final insetUser =
          "INSERT INTO user(name, email, phone, address) VALUES('${_nameController.text}', '${_emailController.text}', '${_phoneController.text}','${_addressController.text}')";
      await dataBase.execute(insetUser);
      //

      // Get the records
      List<Map> list = await dataBase.rawQuery('SELECT * FROM user');
      print("saved users list $list");
    }
  }
}

//CRUD
