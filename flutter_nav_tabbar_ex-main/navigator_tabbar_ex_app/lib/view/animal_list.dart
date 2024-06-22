import 'package:flutter/material.dart';

import '../model/animal_list.dart';
import 'insert_page.dart';
import 'table_list.dart';

class AnimalList extends StatefulWidget {
  const AnimalList({super.key});

  @override
  State<AnimalList> createState() => _HomeState();
}

class _HomeState extends State<AnimalList> with SingleTickerProviderStateMixin{
  late TabController controller;
  late List<Animal> animalList;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
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
        title: const Text('동물 친구 찾기'),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          TableList(list: animalList),
          InsertPage(list: animalList),
        ],
      ),
    );
  }
}