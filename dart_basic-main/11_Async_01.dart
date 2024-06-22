import 'dart:async';

main(){
  checkVersion();
  print('end Process');
}

//Future라고 앞에 리턴값이 있다고 붙여줬으나 3점대 부터 안써도 됨.
// async와 await 함께 써줘야 비동기 함수임.

Future checkVersion() async{
  var version = await lookUpVersion();
  print(version);
}

int lookUpVersion(){
  return 12;
}