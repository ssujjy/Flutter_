main(){
  // Map : Key와 Value로 이루어진 Collection
  Map fruits = {
    'apple' : '사과',
    'grape' : '포도',
    'watermelon' : '수박',
  };
  print(fruits['apple']);
  fruits['watermelon'] = '시원한 수박';
  fruits['banana'] = '바나나';
  print(fruits);

  // map 구성 후 데이터 넣기
  Map carMakers = {};
  carMakers.addAll({"hyundai" : '현대자동차', 'kia' : '기아자동차'});
  print(carMakers);
  print(carMakers.keys.toList());

  // Generic으로 선언하여 map 구성하기.
  Map<String, int> fruitPrice = {
    'apple' : 1000,
    'grape' : 2000,
    'watermelon' : 3000,

  };
  print(fruitPrice["apple"]);
  int? applePrice = fruitPrice['apple'];
  print(fruitPrice['apple']! + fruitPrice['grape']!);

}