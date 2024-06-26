import 'package:flutter/material.dart';
import 'package:listview_insert_app/view/first_page.dart';

import 'model/animal_list.dart';
import 'view/second_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;
  late List<Animal> animalList;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this) ;
    animalList = [];
    addList();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  addList(){
    animalList.add(
      Animal(
        imagePath: 'images/bee.png',
        animalName: '벌',
        kind: '곤충',
        flyExist: true
      )
    );
    animalList.add(
      Animal(
        imagePath: 'images/cat.png',
        animalName: '고양이',
        kind: '포유류',
        flyExist: false
      )
    );
    animalList.add(
      Animal(
        imagePath: 'images/cow.png',
        animalName: '젓소',
        kind: '포유류',
        flyExist: false
      )
    );
    animalList.add(
      Animal(
        imagePath: 'images/dog.png',
        animalName: '강아지',
        kind: '포유류',
        flyExist: false
      )
    );
    animalList.add(
      Animal(
        imagePath: 'images/fox.png',
        animalName: '여우',
        kind: '포유류',
        flyExist: false
      )
    );
    animalList.add(
      Animal(
        imagePath: 'images/monkey.png',
        animalName: '원숭이',
        kind: '포유류',
        flyExist: false
      )
    );
    animalList.add(
      Animal(
        imagePath: 'images/pig.png',
        animalName: '돼지',
        kind: '포유류',
        flyExist: false
      )
    );
    animalList.add(
      Animal(
        imagePath: 'images/wolf.png',
        animalName: '늑대',
        kind: '포유류',
        flyExist: false
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Column(
          children: [
            const Text('ListView Test'),
            TabBar(
              controller: controller,
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.looks_one,
                    color: Colors.blue,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.looks_two,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(list: animalList),
          SecondPage(list: animalList),
        ],
      ),
    );
  }
}