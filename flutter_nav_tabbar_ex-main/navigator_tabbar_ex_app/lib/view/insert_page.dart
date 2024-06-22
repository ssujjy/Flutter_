import 'package:flutter/material.dart';

import '../model/animal_list.dart';

class InsertPage extends StatefulWidget {
  final List<Animal> list; 
  const InsertPage({super.key, required this.list});

  @override
  State<InsertPage> createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}