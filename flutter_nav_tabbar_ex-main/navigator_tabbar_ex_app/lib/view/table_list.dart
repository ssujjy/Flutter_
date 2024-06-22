import 'package:flutter/material.dart';

import '../model/animal_list.dart';

class TableList extends StatefulWidget {
  final List<Animal> list;

  const TableList({super.key, required this.list});

  @override
  State<TableList> createState() => _TableListState();
}

class _TableListState extends State<TableList> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}