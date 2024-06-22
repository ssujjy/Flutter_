import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => snackBarFunction(context),
        child: const Text('Snack Bar Button'),
      ),
    );
  }
  // ---- Functions -------
  snackBarFunction(BuildContext context){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Elevated Button is clicked."))
    );
  }
}