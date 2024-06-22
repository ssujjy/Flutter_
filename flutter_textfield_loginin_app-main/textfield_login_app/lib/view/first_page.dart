import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with SingleTickerProviderStateMixin{
  late String userId = this.userId;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}