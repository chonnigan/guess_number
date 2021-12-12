import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(10);
  while (true) {
    stdout.write("Please guess the number: ");
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == answer) {
      print ("CORRECT");
      return;
    } else {
      print("AGAIN");
    }
  }
}
