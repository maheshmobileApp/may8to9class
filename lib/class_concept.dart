import 'package:flutter/material.dart';

void main() {
  //final/const

  final person1 = Person(firstName: "Flutter", lastName: "Test", age: 20);
  person1.firstName;
 final fulname =  person1.getFullName();

 
}

class Student {
  String? name;
  String? address;
  String? phone;
  int age;

  Student({required this.age});
}

class Person {
  String firstName;
  String lastName;
  int age;

  //Person();

  Person({required this.firstName, required this.lastName, required this.age});

  Person.valueWithData(
      {required this.firstName, required this.lastName, required this.age});

  String getFullName() {
    return this.firstName + this.lastName;
  }
}
