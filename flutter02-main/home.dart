import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text with Column and Row'),
        backgroundColor: Colors.green,
      ),
      body: const Center(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email_rounded
                ),
                SizedBox(
                  width: 20,
                ),
                Text('James'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Cathy'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_balance
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Kenny'),
            ],
          )
        ],)
      ,),
    );
  }
}