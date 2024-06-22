// Date   : 24.03.21(Thr)
// Auther : soojin
// tiltle : [].then사용하는 경우]

main(){
  printOne();
  printTwo();
  printThree();
}

printOne(){
  print("one");
}

printTwo() async{
  Future.delayed(Duration(seconds: 2),(){
    print("Future");
  });
  print("Two");
}

printThree(){
  print("Three");
}