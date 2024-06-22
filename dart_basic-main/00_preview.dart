void main() {
  bool isPublic = true;
  var visibility = isPublic ? 'public' : 'private'; // var는 JSON 사용할 떄 씀. 타입을 정하지 않을때 사용함.
  print(visibility);
  var number = 42;
  printInteger(number);
}

// var는 : 정해지면 변하지 않음. 
// Dynamic : 언제든지 변할 수 있음.

printInteger(int aNumber){
  print('The number is $aNumber');  // '',""안에 변수 사용할 수 있다. 변환 필요 없음.
}
// print가 있으면 앱 등록 안됨.