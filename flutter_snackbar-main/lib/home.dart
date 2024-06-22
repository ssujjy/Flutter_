import 'package:flutter/material.dart';
import 'package:snackbar_app/snackbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: MySnackBar()
  //     Center(
  //       child: 
  //       Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           ElevatedButton(
  //             onPressed: () => snackBarFunction(context, Colors.red), // 함수 사용하기.
  //             // onPressed: () {
  //             //   ScaffoldMessenger.of(context).showSnackBar(
  //             //     const SnackBar(
  //             //       content: Text('Elevated Button is clicked.'),
  //             //       backgroundColor: Colors.red,
  //             //       duration: Duration(seconds: 1), // 얼마동안 나오게 할것인가
  //             //     ),
  //             //   );
  //             // },
  //             child: const Text('Snackbar Red'),
  //           ),
  //           ElevatedButton(
  //             onPressed: () => snackBarFunction(context,Colors.blue), // 함수 사용하기.
  //             // onPressed: () {
  //             //   ScaffoldMessenger.of(context).showSnackBar(
  //             //     const SnackBar(
  //             //       content: Text('Elevated Button is clicked.'),
  //             //       backgroundColor: Colors.red,
  //             //       duration: Duration(seconds: 1), // 얼마동안 나오게 할것인가
  //             //     ),
  //             //   );
  //             // },
  //             child: const Text('Snackbar Blue'),
  //           ),
  //           ElevatedButton(
  //             onPressed: () => snackBarFunction(context, Colors.black), // 함수 사용하기.
  //             // onPressed: () {
  //             //   ScaffoldMessenger.of(context).showSnackBar(
  //             //     const SnackBar(
  //             //       content: Text('Elevated Button is clicked.'),
  //             //       backgroundColor: Colors.red,
  //             //       duration: Duration(seconds: 1), // 얼마동안 나오게 할것인가
  //             //     ),
  //             //   );
  //             // },
  //             child: const Text('Snackbar Black'),
  //           ),
  //         ],
  //       ),
        
      // ),
    );
  }

  // // ---- Functions ----
  // snackBarFunction(BuildContext context, Color color) {
  //   // late Color color;
  //   // if(color1 == "red"){
  //   //     color = color1;
  //   // }
  //   // Color color = color1 == "red" ? Colors.red : Colors.green;
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text('Elevated Button is clicked.'),
  //       backgroundColor: color,
  //       duration: Duration(seconds: 1), // 얼마동안 나오게 할것인가
  //     ),
  //   );
  // }
} // End