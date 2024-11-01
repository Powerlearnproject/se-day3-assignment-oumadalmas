// question 5
void main() {
  // Define a List of int numbers
  List<int> numbers = [3, 15, 8, 102, 67, 45, 2, 200];

  // Iterate through the list with a for loop
  for (int number in numbers) {
    // Print each number
    print("Number: $number");

    // Check if the number is even or odd
    if (number % 2 == 0) {
      print("The number is even.");
    } else {
      print("The number is odd.");
    }

    // Categorize the number
    categorizeNumber(number);
    print("");  // Blank line for readability
  }
}

// Categorize numbers using if-else statements
void categorizeNumber(int number) {
  if (number >= 1 && number <= 10) {
    print("This number is categorized as 'small'.");
  } else if (number >= 11 && number <= 100) {
    print("This number is categorized as 'medium'.");
  } else if (number > 100) {
    print("This number is categorized as 'large'.");
  } else {
    print("This number does not fit into any category.");
  }
}
