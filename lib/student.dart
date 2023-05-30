class Students {
  //dataType  propertyName
  String? name;
  int? age;
  int? idNumber;
  String? className;
  String? address;
  String? gender;
  String? _fulllName; //Private properties

  void displayTheStudentDetails() {
    print("sudent Deails is  ${this.name}");
  }

  String get fName {
    return _fulllName!;
  }

  set setfName(String value) {
    _fulllName = value;
  }
}

//Getter / setter

//Getter: is used to get the value of  a property. it is mostly used to access the private property's value.
/*
return_type get property_name {


}

setter: is used to set the value of a property. is is mostly used to update  a private property's value.

set propertyName(value){

}
 */