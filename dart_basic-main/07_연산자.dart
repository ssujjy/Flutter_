main() {
  // int? num; // int num = 0; // 초기값이 업을 경우는 ?를 쓴다.
  // int num1;

  int num = 0;
  num++;
  num--;

  int? num2 = null;
  print(num2);

  num2 ??= 8; // num2가 null이면 ??= 다음 값으로 대체할게~
  print(num2);

  var num5 = 10;
  var num6 = 5;

  print(num5 is int);   // type 확인.
  print(num5 is String);   // type 확인.
  print(num5 is! String);   // type 확인.

 // AND : &&, OR : ||
 // 나머지 : %
 print (5 / 3); // 정수/정수 -> 실수로 나옴. 
 print (5 ~/ 3); // 정수/~정수 -> 정수로 나옴. 

  // 반복문으로 구구단 2단 ~ 9단 출력하기
  for(int j=2; j <= 9; j++){
    for(int i=1; i <= 9; i++){
      print('$j * $i = ${j*i}');
    }
  }
}