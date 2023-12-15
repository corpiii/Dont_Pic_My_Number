import 'dart:io';
import 'dart:math';

void main() {
  int num;                        // 뽑을 숫자
  Set<int> todayNumber = {};      // 오늘 뽑힌 숫자 저장
  List<int> nobody = [1, 5, 10, 14, 19, 25];    // 없는 숫자
  List<int> result = [];          // 회차별 뽑힌 숫자 저장할 결과리스트

  // 어제 뽑힌 번호는 제외시키기 위해 불러온다.
  final file = File('lib/save.txt');
  List<String> yesterdayList = file     // 파일에 저장된 문자열을 가공하여 List<String> 타입으로 변환
      .readAsStringSync()
      .replaceAll('{', '')
      .replaceAll('}', '')
      .split(', ');
  Set<int> yesterdayNumber = yesterdayList.map((e) => int.parse(e)).toSet(); //List 안의 String을 int로 변환
  print('어제 뽑혔던 번호는 $yesterdayNumber 입니다.');

  for (int i = 1; i <= 2; i++) {        // i 회차 만큼 반복한다.
    Set<int> set = {};                  // 중복 제거할 컬렉션
    while (result.length < 5) {         // 결과값이 5개가 될 때까지 반복 시작
      num = Random().nextInt(38) + 1;   // 1부터 39 사이 랜덤한 숫자 하나를 뽑는다.
      set.add(num);                     // 중복 제거용 컬렉션에 넣는다.
      set                               // 없는 숫자, 어제 뽑혔던 숫자, 오늘 뽑은 숫자에 모두 해당되지 않으면, 오늘 뽑은 숫자 및 결과리스트에 저장한다.
          .where((e) =>
              !nobody.contains(e) &&
              !yesterdayNumber.contains(e) &&
              !todayNumber.contains(e))
          .forEach((e) {
        todayNumber.add(e);
        result.add(e);
      });
    }
    result.sort();                    // 숫자 5개가 모두 뽑히면 while문을 탈출하게 되고 결과값을 오름차순으로 배열한다.
    print(
        '$i회차에 뽑힌 번호들은 ${result[0]}번, ${result[1]}번, ${result[2]}번, ${result[3]}번, ${result[4]}번 입니다.');
    set = {};
    result = [];                      // 임시 저장된 컬렉션을 초기화하고 다음 for 문 회차를 반복한다.
  }

  // 오늘 뽑힌 번호는 내일 제외시키기 위해 저장해 놓는다.
  todayNumber.toList();
  print('오늘 저장될 번호는 $todayNumber 입니다.');
  file.writeAsStringSync('$todayNumber');
}
