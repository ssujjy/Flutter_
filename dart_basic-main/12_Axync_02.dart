// Date   : 24.03.21(Thr)
// Auther : soojin
// tiltle : [].then사용하는 경우]
// .then
// => fat arrow
// 새로운 화면을 띄워서 작업을 하고 다시 돌아왔을때 .then이 있어야 된다. (작업하고 와서 실행)
// 여러개의 Layer중에 새로운 Layer를 띄울때 Pause상태, 다시 돌아올 때 Live 살아나고, 끌 때 Dead 죽음.

main(){
  getVersionName().then((value) => print(value)); 
  print('end Process');
} // End

getVersionName() async{
  var versionName = await lookUpVersionName();
  return versionName;
}

lookUpVersionName(){
  return "Android Q";
}