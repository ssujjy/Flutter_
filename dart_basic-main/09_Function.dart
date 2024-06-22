main(){
  addition(5, 3);
  subtraction(5, 3);

  Operation operation = addition;
  operation(10, 2);

  operation = subtraction;
  operation(10,2);

  calculation(10, 2, addition);
  calculation(10, 2, subtraction);
}// End

addition(int x, int y){
  print("$x + $y = ${x+y}");
}

subtraction(int x, int y){
  print("$x - $y = ${x-y}");
}

// typedef 선언
typedef Operation(int x, int y);

// typedef 활용
calculation(int x, int y, Operation operation){
  operation(x, y);
}