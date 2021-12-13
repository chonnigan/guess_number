import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = Random();
  var answer = r.nextInt(100);
  int count = 0;
  while (true) {
    stdout.write("Please guess the number: ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == answer) {
      print("CORRECT");
      count++;
      break;
    } else {
      if (guess! > answer) {
        print('TRY AGAIN, $guess is TOO HIGH');
        count++;
      } else if (guess < answer) {
        print('TRY AGAIN, $guess is TOO LOW');
        count++;
      }
    }
  }
  if (count >= 1) {
    print('Total guesses: $count');
  }
}
