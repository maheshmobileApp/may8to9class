import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInputTextField extends StatelessWidget {
  const AppInputTextField(
      {super.key,
      required this.controller,
      required this.validator,
      required this.labelText,
      required this.hintText,
      this.inputFormatters});

  final TextEditingController controller;
  final String? Function(String?) validator;
  final List<TextInputFormatter>? inputFormatters;
  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        validator: validator,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          // prefixIcon: Icon(Icons.person),
          // suffixIcon: Icon(Icons.check_circle),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
      ),
    );
  }
}
