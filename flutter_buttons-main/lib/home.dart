import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onLongPress: () => print('text button'),
              onPressed: () =>
                  print("클릭만 한거자낭~~~"), // required는 반드시 있어야하고 나머지는 optional
              // onPressed: (){
              //   int intNum1 = 10;
              //   int intNum2 = 20;
              //   print('$intNum1 + $intNum2 = ${intNum1+intNum2}');
              // },
              style: TextButton.styleFrom(foregroundColor: Colors.red),
              child: const Text(
                'Text Button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => print('Elevated Button'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () => print('outlined button'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                side: const BorderSide(color: Colors.black, width: 2.0),
              ),
              child: const Text('Outlined Button'),
            ),
            TextButton.icon(
              onPressed: () => print('Text Button Icon'),
              icon: const Icon(
                Icons.home,
                size: 30,
                color: Colors.purple,
              ),
              label: const Text('Go to home'),
              style: TextButton.styleFrom(foregroundColor: Colors.purple),
            ),
            ElevatedButton.icon(
              onPressed: () => print('Elevated Button Icon'),
              icon: const Icon(
                Icons.home,
              ),
              label: const Text('Go to home'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(150, 40)),
            ),
            OutlinedButton.icon(
              onPressed: () => print('OutlinedButton Icon'),
              icon: const Icon(Icons.home),
              label: const Text('Go to home'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: Size(100, 40)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onLongPress: () => print('text button'),
                  onPressed: () =>
                      print("클릭만 한거자낭~~~"), // required는 반드시 있어야하고 나머지는 optional
                  // onPressed: (){
                  //   int intNum1 = 10;
                  //   int intNum2 = 20;
                  //   print('$intNum1 + $intNum2 = ${intNum1+intNum2}');
                  // },
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                  child: const Text(
                    'Text Button',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => print('Elevated Button'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text('Elevated Button'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
