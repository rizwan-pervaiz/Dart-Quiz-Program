import 'dart:io';

void main() {
  // Created list and directly assigned values inside list via constructor
  List<Quiz> questions = [
    Quiz("First Islamic Nuclear Power", "Pakistan"),
    Quiz("What is capital of Russia", "Moscow"),
    Quiz("When was Pakistan Created", "1947"),
    Quiz("How many days are in a year", "365"),
  ];

  // Creating a counter
  int score = 0;

  //Dart pre built in functin for list , it will shuffle questions
questions.shuffle();


  // Loop to iterate over list "QUESTION & ANSWERS"
  for (var quiz in questions) {
    print(quiz.question);
    var userInput = stdin.readLineSync();

    // Checking if answer is correct
    if (userInput != null &&
        userInput.trim().toLowerCase() == quiz.answer!.toLowerCase()) {
      print(" Correct\n");
      score++;
    } else {
      print(" Wrong! Correct answer: ${quiz.answer}\n");
    }
  }

  // Final result messages
  if (score == 4) {
    print("You ACED IT, here is your final score $score   / 4");
  } else if (score == 3) {
    print("Great Job! , here is your final score $score / 4");
  } else if (score == 2) {
    print("Good Try! , here is your final score $score / 4");
  } else {
    print("You need more improvement, \n here is your final score $score / 4");
  }
}

class Quiz {
  // Created class and properties
  String? question;
  String? answer;

  // Constructor
  Quiz(this.question, this.answer);
}
