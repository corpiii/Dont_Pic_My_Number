import 'dart:math';

void main() {
  dontPickMe();
}

void dontPickMe() {
  Set<int> set = {};
  // final int random = Random().nextInt(38) + 1;
  // print(random);

  while (set.length < 5) {
    // 5명까지만 뽑는 거라서
    for (int i = 0; i < 5; i++) {
      // 5명까지 뽑는 거 0, 1, 2, 3, 4
      final int random = Random().nextInt(38) + 1;
      // 1 ~ 39까지 랜덤 값
      if (random != 1 &&
          random != 5 &&
          random != 10 &&
          random != 14 &&
          random != 19 &&
          random != 25) {
        // 1, 5, 10, 14, 19, 25는 들어가면 안됨
        set.add(random);
        // 랜덤값을 set에 넣기
        if (set.length == 5) {
          break;
          // 5명 뽑는 거라 5명이 되면 끝
        }
      }
      // list = set.toList();
      // list.map((e) => '$i번차는 $e, $e, $e, $e, $e').forEach(print);
    }
  }
  print(set);
  // print(set);
  // print('--------------');

  // final List<int> list = set.toList();
  // print(list);
  // print('--------------');
  // list.map((e) => 'null')
}

// void someFunc() {
//   if (a < 10) {
//     // 1회 사용
//     if (a < 5) {
//       // 2회 사용
//       if (a == 3) {
//         //3회 사용
//       }
//     }
//   }
// }
