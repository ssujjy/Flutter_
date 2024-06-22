import 'package:flutter/material.dart';
import 'package:textfield_login_app/view/second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TextEditingController userIdController;
  late TextEditingController passwordController;
  late String userId;

  @override
  void initState() {
    super.initState();
    userIdController = TextEditingController();
    passwordController = TextEditingController();
    userId = this.userId;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Log In'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(50.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/login.png'),
                    radius: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: userIdController,
                    decoration: const InputDecoration(
                      labelText: '사용자 ID를 입력하세요',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: '패스워드를 입력하세요',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => checkIdPassword(), 
                  child: const Text('Log In')
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
  // Functions ------------------
  checkIdPassword(){
    if(userIdController.text.trim().isEmpty || 
      passwordController.text.trim().isEmpty){
        errorSnackBar();

      }else{
        if(userIdController.text.trim() == 'root' &&
          passwordController.text.trim() == 'qwer1234'){
            _showDialog();
          }else{
            warnSnackBar();
          }
      }
  }

  _showDialog(){
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: const Text('환영합니다.'),
          content: const Text('신분이 확인되었습니다.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Navigator.push(
                //   context, MaterialPageRoute(builder: (context){
                //     return const SecondPage();
                //   },)
                // );
                Navigator.pushNamed(context, '/second').then((value) => sendUserId());
              },
              child: const Text('OK'),
            )
          ],
        );
      }
    );
  }

  errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('사용자 ID와 암호를 입력하세요.'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }
  warnSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('사용자 ID나 암호가 일치하지 앖습니다.'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      ),
    );
  }
  // Functions --------
  sendUserId(){
    
  }
}