import 'package:collection_view_label_app/view/add_hero.dart';
import 'package:collection_view_label_app/view/detail_hero.dart';
import 'package:flutter/material.dart';

import 'view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const Home(),
        initialRoute: '/',
        routes: {
          '/' : (context) => const Home(),
          '/add' : (context) => const AddHero(),
          '/detail' : (context) => const DetailHero(),
        },
    );
  }
}
