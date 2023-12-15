import 'dart:math';

Random random = Random();
Set<int> fiveNum = {};

Set<int> randomPick() {
  for (int i = 0; i < 5; i++) {
    int result = random.nextInt(39) + 1;
    fiveNum.add(result);
  }
  return fiveNum;
}

void main() {
  Set<int> result;
  do {
    result = randomPick();
  } while (result.contains(1) || result.contains(5) || result.contains(10) || result.contains(14) || result.contains(19));

  final pickedNum = result.map((e) => '$e번');
  print('1회차에 뽑힌 번호들은 ${pickedNum.join(', ')}입니다.');
}
