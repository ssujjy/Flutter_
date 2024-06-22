import 'package:flutter/material.dart';
import 'package:listview_todo_app/model/message.dart';

class DetailList extends StatelessWidget {
  const DetailList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail View'),

      ),
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Message.imagePath,
              width: 100,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(Message.workList),
            ),
          ],
        ),
      ),
    );
  }
}