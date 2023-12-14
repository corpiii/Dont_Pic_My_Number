import 'dart:io';
import 'dart:math';

void main() {
  int num;
  Set<int> todayNumber = {};
  List<int> nobody = [1, 5, 10, 14, 19, 25];
  List<int> result = [];

  // 어제 뽑힌 번호는 제외시키기 위해 불러온다.
  final file = File('lib/save.txt');
  List<String> yesterdayList = file
      .readAsStringSync()
      .replaceAll('{', '')
      .replaceAll('}', '')
      .split(', ');
  Set<int> yesterdayNumber = yesterdayList.map((e) => int.parse(e)).toSet();
  print('어제 뽑혔던 번호는 $yesterdayNumber 입니다.');

  for (int i = 1; i <= 2; i++) {
    Set<int> set = {};
    while (result.length < 5) {
      num = Random().nextInt(38) + 1;
      set.add(num);
      set
          .where((e) =>
              !nobody.contains(e) &&
              !yesterdayNumber.contains(e) &&
              !todayNumber.contains(e))
          .forEach((e) {
        todayNumber.add(e);
        result.add(e);
      });
    }
    result.sort();
    print(
        '$i회차에 뽑힌 번호들은 ${result[0]}번, ${result[1]}번, ${result[2]}번, ${result[3]}번, ${result[4]}번 입니다.');
    set = {};
    result = [];
  }

  // 오늘 뽑힌 번호는 내일 제외시키기 위해 저장해 놓는다.
  todayNumber.toList();
  print('오늘 저장될 번호는 $todayNumber 입니다.');
  file.writeAsStringSync('$todayNumber');
}
