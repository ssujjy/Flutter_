import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Action Sheeet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => actionSheet(),
          child: const Text('Action Sheet'),
        ),
      ),
    );
  }
  // Functions ----------
  actionSheet(){
    showCupertinoModalPopup(
      context: context, 
      barrierDismissible: false,
      builder: (context) => CupertinoActionSheet(
        title: const Text('Title'),
        message: const Text('Message'),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              print('action is pressed.');
              Get.back();
            },
            child: const Text('Action'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              print('button is pressed.');
              Get.back();
            },
            child: const Text('Button'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Get.back(),
          child: const Text('Cancel'),
        ),
      ),
    );
  }
}