// question 3
void main() {
  // Test the convertAndDisplay function with a sample input
  convertAndDisplay("42");
}

void convertAndDisplay(String strNumber) {
  // Convert String to int
  int intValue = int.parse(strNumber);

  // Convert String to double
  double doubleValue = double.parse(strNumber);

  // Display the results
  print("String to int: $intValue");
  print("String to double: $doubleValue");
}
