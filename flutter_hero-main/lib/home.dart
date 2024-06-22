import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text(
          '영웅 Card',
        ),
        backgroundColor: const Color.fromARGB(255, 255, 119, 0),
        foregroundColor: Colors.white,
      ),
      body: Center(child:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            const CircleAvatar(backgroundImage: AssetImage(
              'images/hero.jpeg'
            ),
            radius: 70,
            ),
            const Divider(
                height: 30,
                color: Color.fromARGB(255, 82, 77, 77),
                thickness: 2,
              ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '성웅',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                  ),
                  ),
                Text(
                  '이순신 장군',
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5
                  ),
                  ),
                Text(
                  '전적',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2
                  ),
                ),
                Text(
                  '62전 62승',
                  style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.check_circle_outline, 
                            size: 21,
                          ),
                          Icon(
                            Icons.check_circle_outline, 
                            size: 21,
                          ),
                          Icon(
                            Icons.check_circle_outline, 
                            size: 21,
                          ),
                          Icon(
                            Icons.check_circle_outline, 
                            size: 21,
                          ),
                          Icon(
                            Icons.check_circle_outline, 
                            size: 21,
                          ),
                          Icon(
                            Icons.check_circle_outline, 
                            size: 21,
                          ),
                          Icon(
                            Icons.check_circle_outline, 
                            size: 21,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            '옥포해전',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2
                            ),  
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text('사천포해전',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2
                            ),  ),
                        ),
                        Text('당포해전',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2
                          ),  ),
                        Text('한산도대첩',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2
                          ),  ),
                        Text('부산포해전',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2
                          ),  ),
                        Text('명량해전',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2
                          ),  ),
                        Text('노량해전',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2
                          ),  ),
                      ],
                    ),
                  ],
                ),
              ],

            ),
            Image.asset(
                'images/ship.gif',
                width: 150,
              ),
          ],),
        )
      ),
    );
  }
}