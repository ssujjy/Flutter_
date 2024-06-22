import 'package:flutter/material.dart';

class ReceivedMail extends StatelessWidget {
  const ReceivedMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Received Mail'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text('유비에게서 온 메일'),
            Text('관우에게서 온 메일'),
            Text('장비에게서 온 메일'),
          ],
        ),
      ),
    );
  }
}