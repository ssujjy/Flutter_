import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddView extends StatefulWidget {
  const AddView({super.key});

  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  late TextEditingController controller;
  late String _imageName;
  late int _imageIndex;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    _imageName = "images/cart.png";
    _imageIndex = 0;
    
  }

  // setImage(){
  //   _imageName.add('cart.png');
  //   _imageName.add('clock.png');
  //   _imageName.add('pencil.png');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add View'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(_imageName),
              SizedBox(
                width: 180,
                child: CupertinoPicker(
                  itemExtent: 50, 
                  scrollController: FixedExtentScrollController(initialItem: 0),
                  onSelectedItemChanged: (value) {
                    _imageIndex = value;
                    setState(() {});
                  },
                  children: List.generate(
                    3, 
                    (index) => Center(
                      child: Image.asset(
                        'images/${_imageName[index]}', width:50,
                      ),
                    )
                  ),
                ),
              ),
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: '목록을 입력하세요',
                ),
                keyboardType: TextInputType.text,
              ),
              ElevatedButton(
                onPressed: () => checkField(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text('OK'),
              ),  
            ],
          ),
        ],
      ),
    );
  }
  // Functions ----------------
  checkField(){
    
  }
}