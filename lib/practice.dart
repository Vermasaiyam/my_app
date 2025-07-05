import 'dart:io';

void main(){
  // print("Welcome to dart");
  // stdout.write('Enter your name: ');

  // var name = stdin.readLineSync();
  // print("Welcome, $name");

  // object
  var raman = new Human();
  var raman2 = Human();

  int a;
  // print(a); // error due to null

  int? b; // it can be null, so use ?

  // assign
  a = 5;
  print(a);

  BigInt c = BigInt.parse('45678976545665');

  String name = "raman";
  name = "Saiyam";

  double d = 56.56;
  num e = 5; // can store both int and float
  num f = 5.5;

  bool isLogin = false;

  // var & dynamic
  String n = "Saiyam";
  var m = "Verma";
  // m = 8; // error dega kyuki isne dynamically dekh lia ye string type ka hai

  m = "rhbj";

  var section; // iska datatype dynamic datatype hogya hai
  section = 'D';
  section = 55;

  dynamic s; // same as var
  // but difference is that if we initialize it inline, it will always remain dynamic only


  // functions
  // var className = myClass();
  // className.printName("Saiyam Verma");
  // print(className.add());


  // list
  var l1 = [1,2,3,4];
  l1.add(5);

  var names = [];
  names.addAll(l1);

  names.insert(2, 100);
  names.insertAll(3, l1);
  names[2] = "raman";

  l1.replaceRange(0, 3, [10,20,30,40]);
  l1.removeRange(0, 3);
  l1.removeLast();
  l1.remove(40);
  l1.removeAt(0);

  // print("$l1");
  // print("$names");
  // print("Length: ${names.length}");
  // print("Length: ${names.reversed}");
  // print("Length: ${names.first}");
  // print("Length: ${names.last}");
  // print("Length: ${names.isEmpty}");
  // print("Length: ${names.elementAt(3)}");



  // Hashmaps
  var maps = {
    'key1': "value1",
    'key2': 69,
    'key3': "value1",
    'key4': true
  };

  maps['key1'] = 90;
  // print(maps);
  // print(maps["key2"]);

  var map2 = Map();

  map2['1'] = 89;
  // print(map2);
  // print(maps.isEmpty);
  // print(maps.length);
  // print(maps.keys);
  // print(maps.values);
  // print(maps.remove('key4'));
  // print(maps.containsKey('key2'));
  // print(maps.containsValue('value1'));


  // final v/s const
  final String n1;
  n1 = "saiyam";
  // n1 = 'verma'; //error

  const n2 = "raman";
  // n2 = "saiyam"; //error

  final names2 = ["s", "a"];
  // names2 = [1,2]; //error
  names2.add('p'); // can be modified but cant be overwrite fully

  const names3 = ["s", "a"];
  // names3 = [1,2]; //error
  names2.add('p'); // error



  // conditional programming
  int z = 100;
  if (z>200){

  } else if(z > 50){

  } else{

  }



  // loops
  for(int a=1 ; a<10 ; a++){
    print("Hello");
  }
}

class myClass{
  myClass(){
    print("Class object created");
  }

  void printName(String name){
    print("Hello ji, $name");
  }

  int add(){
    return 6+7;
  }
}

class Human{
  // constructor
  Human();
}