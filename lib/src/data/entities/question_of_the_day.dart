
import 'package:quizz_game/src/data/entities/question.dart';

class QuestionOfTheDay{
  int? responseCode;
  String date = '';
  List<Question>? results;

  QuestionOfTheDay({this.responseCode, this.results, required this.date});


  QuestionOfTheDay.fromJson(Map<String, dynamic> json){
    responseCode = json['response_code'];
    if(json['result'] != null){
      results = <Question>[];
      json['results'].foreach((v){
        results!.add(Question.fromJson(v));
      });
    }
  }


  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['response_code'] = responseCode;
    if(results != null){
      data['results'] = results!.map((e) => e.toJson()).toList();
    }
    return data;
  }



}