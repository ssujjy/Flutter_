import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator_AppBar'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/SendMail'),
            icon: const Icon(Icons.email)
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/ReceiveMail'),
            icon: const Icon(Icons.email_outlined)
          ),
        ],
      ),
      body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/SendMail'),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text('보낸 편지함'),
                  ),  
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/ReceiveMail'),
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text('받은 편지함'),
                  ),  
                ],
              ) 

            ),
    );
  }
}