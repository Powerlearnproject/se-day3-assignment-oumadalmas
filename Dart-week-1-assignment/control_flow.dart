// question 4
void main() {
  // If-Else Statements
  checkNumber(5);  // Test with a positive number
  checkVotingEligibility(20);  // Test with an eligible age

  // Switch Case for day of the week
  printDayOfWeek(3);  // Test with 3 for Wednesday

  // Loops
  printNumbersWithForLoop();
  printNumbersWithWhileLoop();
  printNumbersWithDoWhileLoop();
}

// If-Else Statements

void checkNumber(int number) {
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("$number is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }
}

// Switch Case

void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day.");
  }
}

// Loops

void printNumbersWithForLoop() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void printNumbersWithWhileLoop() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void printNumbersWithDoWhileLoop() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}
