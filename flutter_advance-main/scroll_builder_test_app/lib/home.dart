import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<String> animalList;
  late List<Color> animalColor;
  late String selectedName;   

  @override
  void initState() {
    super.initState();
    animalList = [
      'bee.png',
      'cat.png',
      'cow.png',
      'dog.png',
      'fox.png',
      'monkey.png',
      'pig.png',
      'wolf.png',
    ];

    animalColor = [
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
      Colors.yellow,
    ];
    selectedName = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll & Builder Test'),
      ),
      body: Column(
        children: [
          const Text('원하는 동물을 선택하세요.'),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: animalList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => rebuildBorder(index),
                  child: Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: animalColor[index],
                        width: 100
                      )
                    ),
                    child: Image.asset(
                      'images/${animalList[index]}'
                    ),
                  ),
                );
              },
            ),
          ),
          Text(selectedName),
        ],
      ),
    );
  }
  // ----- Functions -------
  rebuildBorder(index){
    // 모든값을 초기화.
    for(int i=0; i < animalColor.length; i++){
      animalColor[i] = Colors.yellow;
    }
    // 클릭한것만 변경.
    animalColor[index] = Colors.red;
    selectedName = animalList[index];
    setState(() { });
  }
}