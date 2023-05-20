void main() {

  //Map<String,String> user = {}
  //List<int>


  Map<String, dynamic> user = {"name":"flutter", "age":12,"salary":1241242.004,"phone":"34525234" };

  print(user);

  print(user["name"]);

  print(user["name1"]);

  user["address"] =  "hyderabad";
  user.addAll({"address":"vskp"});
 
 print(user.keys);
 print(user.values);
 print(user.isEmpty);
 print(user.isNotEmpty);
 print(user.length);

 user.remove("salary");
 user.clear();

 user.forEach((key, value) {
  
  print("key is $key value is $value");

 });

//  user.map((key, value) {
//   return {"k":""};
//  });

//  user.map((key, value) {
   
//    print();
   
//  });






print(user);



//Strings
//List
//Map








  
}