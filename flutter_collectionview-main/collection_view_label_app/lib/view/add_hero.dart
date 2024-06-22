import 'package:flutter/material.dart';

class AddHero extends StatefulWidget {
  const AddHero({super.key});

  @override
  State<AddHero> createState() => _AddHeroState();
}

class _AddHeroState extends State<AddHero> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('인물 추가'),
      ),
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                  controller: controller,
                //readOnly: true,
                decoration: const InputDecoration(
                  labelText: '인물을 추가하세요',
                ),
                keyboardType: TextInputType.number,
              ),
            ),  
            ElevatedButton(
              onPressed: () => _addHero(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text('추가'),
            ),  
          ],
        ),
      ),
    );
  }
  // Functions ------------
  _addHero(){

  }
}