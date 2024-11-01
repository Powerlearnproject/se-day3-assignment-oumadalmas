//question 2
void main() {
  // Testing conversions
  String strNumber = "42";
  int intNumber = 100;

  print("String to int: ${stringToInt(strNumber)}");
  print("String to double: ${stringToDouble(strNumber)}");
  print("Int to String: ${intToString(intNumber)}");
  print("Int to double: ${intToDouble(intNumber)}");
}

// Convert String to int
int stringToInt(String str) {
  return int.parse(str);
}

// Convert String to double
double stringToDouble(String str) {
  return double.parse(str);
}

// Convert int to String
String intToString(int num) {
  return num.toString();
}

// Convert int to double
double intToDouble(int num) {
  return num.toDouble();
}
