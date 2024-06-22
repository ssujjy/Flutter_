main() {
  List threeKingdoms = [];  // type을 정하지 않았기 때문에 다 적을 수 있다.
  // 추가하기
  threeKingdoms.add('위');
  threeKingdoms.add('촉');
  threeKingdoms.add('오');
  threeKingdoms.add(100);

  print(threeKingdoms[0]);
  threeKingdoms[0] = 'We';
  print(threeKingdoms);
  
  // 삭제
  threeKingdoms.removeAt(1);
  threeKingdoms.remove('We');
  print(threeKingdoms);

  List<String> threeKingdoms2 = [];
  threeKingdoms2.add('We');
  // threeKingdoms2.add(1);

  List<String> threeKingdoms3 = ['위','촉','오'];

  

}