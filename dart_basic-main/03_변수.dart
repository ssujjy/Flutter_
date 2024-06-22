main() {
  // 문자열
  String str1 = '유비';
  String str2 = '장비';

  // 문자열 연결 방식
  print(str1 + " : "+ str2);

  // 문자열 보간법 (String Interpolation)
  print("$str1 : $str2");

  // 정부의 문자열 보간법
  int intNum1 = 170;
  int intNum2 = 70;

  print("intNum1과 intNum2의 합은 ${intNum1 + intNum2} 입니다.");

  //****  var와 dynamic  ****/
  var name = "유비";
  name = "관우";
  //name = 1;

  dynamic name1 = "장비";
  name1 = "조자룡";
  name1 = 10;
}