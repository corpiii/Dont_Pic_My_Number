import 'dart:math';

List<int> randomNumber(List<int> choiceNumbers) {
  List<int> randomNumbers = [];
  List<int> noNumbers = [1, 5, 10, 14, 19, 25];
  while (randomNumbers.length < 5) {
    int number = Random().nextInt(39) + 1;
    if (!randomNumbers.contains(number) &&
        !noNumbers.contains(number) &&
        !choiceNumbers.contains(number)) {
      randomNumbers.add(number);
    }
  }
  randomNumbers.sort();
  choiceNumbers.addAll(randomNumbers);
  return randomNumbers;
}

roundNumber(int round) {
  List<int> choiceNumbers = [];
  for (int i = 1; i <= round; i++) {
    String numberPrint =
        randomNumber(choiceNumbers).map((numberPrint) => '$numberPrint번').join(', ');
    print('$i회차에서 뽑힌 번호들은 $numberPrint 입니다');
    if (i% 2== 0) {
      choiceNumbers.clear();
    }
    print(choiceNumbers);
  }
}

void main() {
  roundNumber(5);
}
