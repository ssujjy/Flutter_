import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              //
            }, 
            icon: const Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: (){
              //
            }, 
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          children: [
            Text('Drawer')
          ],
        )
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // listView의 safeArea(padding)를 사용하지 않겠다.
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/img1.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/img1.png'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/img1.png'),
                ),
              ],
              accountName: const Text('Pikachu'), 
              accountEmail: const Text('pikachu@naver.com'),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)
                )
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.green
              ),  
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.filter_vintage,
                color: Colors.blue
              ),  
              title: const Text('설정'),
              onTap: () {
                print('설정 is clicked');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.dvr,
                color: Colors.red
              ),  
              title: const Text('자주 묻는 질문'),
              onTap: () {
                print('자주 묻는 질문 is clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}