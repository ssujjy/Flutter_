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
  late int page;
  late TextEditingController _textEditingController;
  late String searchText;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    data = [];
    page = 1;
    _textEditingController = TextEditingController();
    searchText = "";
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      // 리스트의 마지막일 경우
      if(
        _scrollController.offset >= _scrollController.position.maxScrollExtent 
        &&
        !_scrollController.position.outOfRange
      ){
        page++;
        getJSONData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Kakao Rest API Exercise'),
        title: TextField(
          controller: _textEditingController,
          decoration: const InputDecoration(
            labelText: '검색어를 입력하세요',
          ),
          keyboardType: TextInputType.text,
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: data.isEmpty
      ? const Center(
        child: Text('데이터가 없습니다.'),
      )
      : ListView.builder(
        itemCount: data.length,
        controller: _scrollController,
        itemBuilder: (context, index) {
          return Card(
            child: Row(children: [
              Image.network(
                data[index]['thumbnail'],
                height: 100,
                width: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  data[index]['title'].toString().length <26
                    ? Text(data[index]['title'].toString())
                    : Text(data[index]['title']
                    .toString()
                    .replaceRange(
                      24, 
                      data[index]['title'].toString().length, "..."),
                  ),
                ],
              )
            ],),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          page = 1;
          data.clear();
          if(_textEditingController.text.trim().isNotEmpty){
            searchText = _textEditingController.text.trim();
            getJSONData();
          }
        },
        child: const Icon(Icons.file_download),
      ),
    );
  }
  // title, authors, sale_price, status 추가하기
  //  Functions -----------------------
  getJSONData() async{
    var uri = Uri.parse('https://dapi.kakao.com/v3/search/book?target=title&page=$page&query=$searchText');
    var response = await http.get(uri,
      headers: {"Authorization":"KakaoAK baa3b0df04a5567dd0c03bf9c506c8e0"}
    );
    // print(response.body);
    var dataConvertedJSON = json.decode(utf8.decode(response.bodyBytes));
    List result = dataConvertedJSON['documents'];
    data.addAll(result);
    setState(() {});
  }
}