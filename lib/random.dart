import 'dart:math';
import 'package:collection/collection.dart';

List<int> randomNumber() {
  List<int> randomNumbers = [];
  List<int> noNumbers = [1, 5, 10, 14, 19, 25];
  List<int> choiceNumbers = [];
  while (randomNumbers.length < 5) {
    int number = Random().nextInt(39) + 1;
    if (!randomNumbers.contains(number) &&
        !noNumbers.contains(number) &&
        !choiceNumbers.contains(number)) {
      randomNumbers.add(number);
    }
    randomNumbers.sort();
  }
  choiceNumbers.addAll(randomNumbers);
  return randomNumbers;
  // 왜 retrun 뒤에 sort는 안되는 것인가?
  // randomNumbers 는 List라서 가능해야 하는거 아닌가? 왜 retrun전에 randomNumbers.sort는 가능한가?
  // sort의 타입이 void라서 안되는 것인가..?
}

roundNumber(int round) {
  for (int i = 1; i <= round; i++) {
    String numberPrint =
        randomNumber().map((numberPrint) => '$numberPrint번').join(', ');
    print('$i회차에서 뽑힌 번호들은 $numberPrint 입니다');
  }
}

void main() {
  roundNumber(5);
}
