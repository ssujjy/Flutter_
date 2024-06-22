main(){
  ThreeKingdoms threeKingdoms = ThreeKingdoms("관우", "촉");
  threeKingdoms.saySomething();

} // End

// [way1 : java에서 사용하는 방법]
class ThreeKingdoms{
  // Field
  String name = "";
  String nation = "";

  // Constructor
  // [way1]
  ThreeKingdoms(String name, String nation){
    this.name = name;
    this.nation = nation;
  }

  // Method
  saySomething(){
    print("제 이름은 $name 이고 조국은 $nation 입니다.");
  } 
}// ThreeKingdoms

// [way2 : {}없이 : 사용하기]
class ThreeKingdoms1{
  // Field
  String name;
  String nation;

  // Constructor
  ThreeKingdoms1(String name, String nation)
  :  this.name = name,
    this.nation = nation;
  

  // Method
  saySomething(){
    print("제 이름은 $name 이고 조국은 $nation 입니다.");
  } 
}// ThreeKingdoms1

// [way3 : late 사용하기]
class ThreeKingdoms2{
  // Field
  late String name; // 초기값 셋팅시
  late String nation;

  // Constructor
  ThreeKingdoms2(String name, String nation){
    this.name = name;
    this.nation = nation;
  }
  
  // Method
  saySomething(){
    print("제 이름은 $name 이고 조국은 $nation 입니다.");
  } 
}// ThreeKingdoms2