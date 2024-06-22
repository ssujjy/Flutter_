import 'package:flutter/material.dart';

import 'model/todo_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<TodoList> _todoList;

  @override
  void initState() {
    super.initState();
    _todoList = [];
    addTodoList();
  }

  addTodoList(){
    _todoList.add(TodoList(imagePath: 'images/cart.png', todoList: '책 구매'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main View'),
      ),
      body: ListView(

      ),
    );
  }
}