import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  late List data;

  @override
  void initState() {
    super.initState();
    data = [];
    getJsonData();  // 1번째 CPU 하는 일 : 데이터를 가져와요.
  }

  getJsonData() async{
    var url = Uri.parse('https://zeushahn.github.io/Test/movies.json');
    var response = await http.get(url);
    // print(response);
    var dataConvertedJson = json.decode(utf8.decode(response.bodyBytes));
    List result = dataConvertedJson['results'];
    data.addAll(result);
    setState(() {});  // async라서 그림을 먼저 그릴지, 데이터를 먼저 가져올지 모르기 때문에 필요함.
  }
  @override
  Widget build(BuildContext context) {  // 2번째 CPU : 열심히 그림을 그려요.
    return Scaffold(
      appBar: AppBar(
        title: const Text('JSON Movie'),
      ),
      body: data.isEmpty
      // ? const Text(
      //   '데이터가 없습니다.',
      //   style: TextStyle(
      //     fontSize: 20,
      //   ),
      //   textAlign: TextAlign.center,
      // )
      ? const Center(child: CircularProgressIndicator())
      : ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => cardBuild(context, index),
      ),
    );
  }

  // --- widget Functions ------
  Widget cardBuild(BuildContext context,int index){
    return Card(
      color: const Color.fromARGB(144, 255, 255, 255),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  data[index]['image'],
                  width: 80,
                ),
                Text(
                  '   ${data[index]['title'].toString()}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}