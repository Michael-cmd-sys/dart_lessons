void main() {
// Before we start, you should knowo that semicoolons are very important in dart. It was initially created by Google as a replacement for JavaScript unfortunately Microsoft's Typescript won. Later Flutter picked it up and now here we are. ^_^

  // Integers
  const int SPEED_OF_LIGHT = 299792458;
  final double PI = 3.14159265359;
  // const and final are used to declare variables in dart. For the differences between them, I'd say stick to what your IDE tells you to use esp. with dart's linting.

  // Non-nullable strings
  String? language;
  late String name; //This is preferered to the ? notation
  name = "Michael Kofi Awuni";
  language = 'Dart';
  String description = """This is just like python's feature for doc strings.
  It is used to create multiline strings in Dart""";
  // You can use either double or single quotes for the above

  // Booleans
  bool isTrue = true;
  bool isFalse = false;

  // Lists
  List<int> numbers = [1, 2, 3];
  List<String> names = ["Michael", "Kofi", "Awuni"];
  List<bool> booleans = [true, false, true];
  // List operations
  booleans.remove(true);
  names.add("Michael_cmd_sys");
  // Creating a list with a fixed size
  // The dynamic type is used when the type is not known
  dynamic fixedList = List.filled(3, "Code Sleep Repeat");
  // Var can be used as well only when the type can be inferred by the compiler
  var life = 42;

  // Maps
  Map<String, int> ages = {"Michael": 37, "Kofi": 26, "Awuni": 22};
  Map jsonData = {};
  jsonData["001"] = {"Name": "Dart", "IsGood": true, "language_no": 6};

  // suppose 'jsonData is a json received from an api call and would like to use it but dart gives an error because it's type can't be properly inferrred. The issue is resolved as below
  dynamic receivedData = jsonData["001"] as Map;

  // Map operations
  ages["Michael"] = 38;
  ages.remove("Awuni");

// Outputing data to the console or terminal
  print("A mathematicians favourite number is $PI");
  // To include variables in strings, we use the '$' or '${}'
  // The differnce between the teo is that the foremr is preferred when you only have a single variablewhile the latter is used if there is more than a single variable being refernced or a property or method being refernced
  print("Is the Flash really as fast as $SPEED_OF_LIGHT m/s^2");
  print(receivedData);
  print("Hello, World, dart is awesome. \n $description");
  print("What is becoming my new favourtie language, ${receivedData["Name"]}");

  //* Arithmetic operations in dart are similar to most programming languages
  // / -> division
  //  * -> multiplication
  //  - -> substraction
  //  + -> addition
  // '~/' -> integer division 
  //(floor division-python's equivalent of '//')
  // % -> modulo
  // ++ -> increment operator 
  // -- -> decrement operator

  // Logical operators
  // && -> and
  // || -> or
  // ! -> not

  // Comparison operators are just like most languages also
  //  != -> not equal to
  //  == -> equal to
  // >= -> greater than or equal to
  // <= -> less than or equal to
  // > -> greater than
  // < -> less than
  // NOTE: unlike js, dart doens't coerce types

  // loops
  // supports break and continue
  // Supports classic for loop
  // Supports do while and while loops

  // Control structures
  // if, else if , else
  // switch ... case 
}
