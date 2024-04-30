void main() {
  /**
   * As you can tell, the main you see itself is a function.
   *  It acts as the entry point for our dart program. 
   * Just as most programing languages, methods and functions are 
   * really just the same thing just with diffent names.
   * Methods exists in classes (we'll get to see those later).
   * Functions are standalones. 
   * Functions are basically program structures used for grouping
   * a related code block together.
   * 
   * Stntax:
   *    type function_name(parameters){
   *          code block
   *          return value
   *      }
   *  just like with ordinary variables, 
   * functions are to be decalared with their datatypes and 
   * their return value should be of the same datatype 
   * the function was declared with. 
   * (Except of course for void functions as they return nothing)
   * 
   * Also parameters are to functions as placeholders are to form fields whereas arguments are the user form data that is passed by the user into the form 
   * 
   *    function_name(arguments)
   *  When you declare a function, you have to call it
   *  for it to run. In this case, 
   * you can assign it to a variable 
   * and print the variables value 
   */

  // Now for some actual code
  void greet() {
    print(
        "\n\nWelcome to Dartville. Enjoy your stay as we embark on an adventure together.\n");
  }

  greet();

  // Here cel is a required positional parameter
  double celToFar(double cel) {
    return (cel * 9 / 5) + 32;
  }

  print("A fun trivia: 37 degree Celsius = ${celToFar(37)} Fahrenheit\n");

  String getName(String f_name, [String? l_name]) {
    //In the above l_name was declared as an optional parameter
    if (l_name == null)  l_name = "";
    return "$f_name $l_name";
  }

  print("My name is ${getName('Michael')}\n");

// In the function below, I declard a default value for the
// qty optional parameter
  double getLightYears([double qty = 1]) {
    return qty * 9.46e9;
    // '3.7e9' is just a fancy way of writing 3.7x10^9
  }

  print(
      "\nA light year, ${getLightYears()}km, is the distance light travels from the sun to the earth. Now, isn't that an exciting fact to know.\n");

  // Here is an example also of a named parameter
  // They are by default optional and
  // need to come only after positional parameters have been set
  String isFan({bool likeDeed = true}) {
    return likeDeed ? "Yay, welcome to the club (^^)" : "awwwww {~.~}";
    // The ... ? ... : ... you see above is called a ternary operator. It is a shortcut for creating an inline if else condition.
    // The first part holds the condition, the second part holds
    // what to retun if the condition is true and the last part if the condition turns out as false
  }

  print(
      "Are you a dart fan? ${isFan()}"); //Since user didn't provide argument the default value true was used
  print("Are you also a Liverpool fun? ${isFan(likeDeed: false)}\n");
  // Notice that for a named parameter, the syntax for passing in arguments is ```argument_name : argument_value```

  // To annotate a named parameter as required,
  //the 'required'key word is used
  double getArea({required double radius}) {
    return 3.1415926535878 * (radius * radius);
  }

// getArea() //- This will throw an error.

  // Anonymous functions. Functions that are normally used
  //in one liners without a name for performing a specific task
  List<String> friends = [
    "Emmanuel",
    "Daniel",
    "Samuel",
    "Kenneth",
    "Enoch",
    "Asford",
    "Edmund",
    "Edwin",
    "Marvin",
    "Prince"
  ];

  friends.forEach((friend) => print("Hello $friend"));
  // Here '(...) => ...' is an anonymous function
  //used to iterate a list and attach hello to it

  // Records were introduced in dart3.
  //They allow you to create somewhat customisable functions
  // They aren't functions though, just another data type in dart
  (String, String, int, String) student(
      String studentName, String courseName, int level, String gender) {
    return (studentName, courseName, level, gender);
  }

  var (name, cName, lvl, gender) =
      student("Michael", "BSc. Mathematics", 200, "Male");

  print("""\n\n
    My name is $name. I am a $lvl $cName student seeking to help shape the world using the power of code. 
""");
}
