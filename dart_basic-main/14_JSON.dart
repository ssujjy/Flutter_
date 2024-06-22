import 'dart:convert';

main(){
  var jsonString = '''
  [
    {"score" : 40},
    {"score" : 80}
  ]
  ''';

  var scores = jsonDecode(jsonString);
  print(scores is List);
  print(scores);
  print(scores[0]);
  print(scores[0]['score']);
}