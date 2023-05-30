import 'package:class8to9/student.dart';
import 'package:flutter/material.dart';

void main() {
  //final/const

  // final person1 = Person(firstName: "Flutter", lastName: "Test", age: 20);
  // person1.firstName;
  // final fulname = person1.getFullName();

//className object = new className() //syntax of the object creation
  Students student1 = new Students();
  student1.name =
      "Mastan"; //Access the properties and set the value to the property
  student1.age = 20;
  student1.address = "Hyd";
  student1.className = "Flutter 9t010";
  student1.idNumber = 1;
  student1.gender = "male";
  student1.setfName = "Flutter ";
  student1.displayTheStudentDetails();
  //calling the method
  print(student1.name);
  print(student1.fName);

  Students student2 = new Students();
  student2.name = "Karthik";
  student2.age = 20;
  student2.address = "Hyd";
  student2.className = "Flutter 9t010";
  student2.idNumber = 2;
  student2.gender = "male";
  student2.displayTheStudentDetails();

  //
}

/*
class className extends classname {


}
Class: class is blueprint of the object.
An object is an instance of a class. 

Student

name
age
idNumber
className
Address
gender

displayTheStudentDetails

class Students {
  //dataType  propertyName
  String? name;
  int? age;
  int? idNumber;
  String? className;
  String? address;
  String? gender

void displayTheStudentDetails(){

  print("sudent Deails is  ${this.name}")
}


}



 */

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
