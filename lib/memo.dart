//쪼개서 풀기

import 'dart:math';

void main () {
  //1. 1-39 사이에 랜덤한 숫자 생성하기
  final random = Random();
  // final randomInt = random.nextInt(10); // 0이상 10미만
  // final randomDouble = random.nextDouble(); // 0이상 1미만
  // final randomBool = random.nextBool();
// print(randomInt);
// print(randomDouble);
// print(randomBool);
// final randomNum = random.nextInt(39)+1; // 1 이상 40미만 //1-39
// print(randomNum);

// 2. 1-39 사이의 숫자를 랜덤하게 뽑는다. 5번 반복한다. (for문 안에 담음)

  for (int i = 0; i < 5; i++) {
    final randomNum = random.nextInt(39) + 1; // 1 이상 40미만 //1-39
    print(randomNum);
  }
}

//3. 뽑은 5개의 숫자를 set에 담는다. = 중복제거



