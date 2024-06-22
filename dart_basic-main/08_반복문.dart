main(){
  for(int i=1; i<=10; i++){
    print(i);
  }
  List<int> numList = [1,3,5,7,9];
  for(int i=0; i<numList.length; i++){
    print(numList[i]);
  }
  for(int i in numList){
    print(i);
  }

  // while
  int number = 1;
  while(number <= 10){
    print(number);
    number++;
  }

  // do while
  number = 1;
  do{
    print(number);
    number++;
  }while(number <= 10);
}