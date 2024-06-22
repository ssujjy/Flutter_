import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List _imagesFile;
  late int _currentPage;
  late int _nextPage;

  @override
  void initState() {
    super.initState();
    _imagesFile = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];

    _currentPage = 0;
    _nextPage = 1;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('무한 이미지 반복')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _imagesFile[_currentPage],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.blue,
                      width: 10,
                    )
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'images/${_imagesFile[_currentPage]}',
                      fit: BoxFit.fill, // 정한 크기만큼 다 채워라.
                      width: 350,
                      height: 500,
                    ),
                  ),
                ),
                Positioned(
                  left: 250,
                  top: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.amber,
                        width: 5
                      )
                    ),
                    child: Image.asset(
                      'images/${_imagesFile[_nextPage]}',
                      fit: BoxFit.fill,
                      width: 100,
                      height: 150,
                    ),
                  )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => _goBack(), 
                    child: const Text('<< Prev'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => _goPreview(), 
                    child: const Text('Next >>')
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
  // --- Functions ----
  // Btn 다음 >>
    _goPreview(){
      _currentPage += 1;
      _nextPage += 1;
      if(_currentPage >= _imagesFile.length){
        _currentPage = 0;
      }
      if(_nextPage > _imagesFile.length){
        _nextPage = -1;
      }
        
    setState(() {});
    }
    // Btn << 이전
    _goBack(){
      _currentPage -= 1;
      _nextPage -= 1;
      if(_currentPage < 0){
        _currentPage = _imagesFile.length - 1;
      }
      if(_nextPage < -1){
        _nextPage = _currentPage;
      }
      setState(() {});
    }
}