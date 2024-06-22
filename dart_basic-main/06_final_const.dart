main() {
  final String name = "유비";
  // name = "조조";
  const String name1 = "조자룡";
  // name1 = "조조";

  // final과 const의 차이점
  // app이 구동될때.
  final DateTime now1 = DateTime.now(); // 컴파일 단계에서는 값이 변경되어도 되나, // 실행단계에서는 값이 정해져야 함.!!
  print(now1);

  // 코딩할때 정해짐. 
  // const DateTime now2 = DateTime.now(); // 컴파일시 값이 있어야 함.
  // print(now2);
}