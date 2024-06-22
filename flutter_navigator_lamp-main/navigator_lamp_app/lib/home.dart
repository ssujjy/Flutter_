import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController controller;
  late String imageName;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    imageName = "images/lamp_on.png";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Main 화면'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/update').then((value) => getContent()),
            icon: Icon(Icons.create),
          ),
        ],
      ),
      body: Center(
        child: 
        Column(
          children: [
            TextField(
              controller: controller,
              //readOnly: true,
              decoration: const InputDecoration(
                labelText: '글자를 입력하세요',
                border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.text,
            ),
            Image.asset(
              imageName,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
  // Functions -------------
  getContent(){
    
  }
}