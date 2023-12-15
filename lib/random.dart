import 'package:collection/collection.dart';
List<int> numbers = [2,3,4,6,7,8,9,11,12,13,15,16,17,18,20,21,22,23,24,26,27,28,29,30,31,32,33,34,35,36,37,38,39];
List<int> choiceNumbers = [];

void main() {
  for (int i = 1; i <= 2; i++) {
    numbers.shuffle();
    List<int> fiveNumbers = numbers.sublist(0, 5);
    choiceNumbers.addAll(fiveNumbers = numbers.sublist(0, 5));
    numbers.removeRange(0, 5);
    String fiveNumbersStr = fiveNumbers.map((number) => '$number번').sorted((a, b) => compareNatural(a, b)).join(' ');
    print('$i회차에 뽑힌 번호들은 $fiveNumbersStr 입니다.');
  }
  print('리스트에서 제외된 번호들 $choiceNumbers');
}