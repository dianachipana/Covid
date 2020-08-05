import 'dart:convert';

import 'package:covid/models/Question.dart';

import 'logic.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' show utf8;

abstract class QuestionLogic extends WService{
  Future<List<Question>> getQuestions();

}

class GenericException implements Exception{}
class QuestionException  implements Exception{}
class TokenException implements Exception{}
class AccountException implements Exception{
  final String message;
  AccountException({this.message});
}

class QuestionSimple extends QuestionLogic{

  List<Question>  listQuestion = new List<Question>();

  @override
  Future<List<Question>> getQuestions() async {
    dynamic client = new http.Client();
    await loadHeaders();
    final response    = await client.get(appBackendURL + 'v1/pregunta', headers: headers );
  
  
    final decodeData  = json.decode(Utf8Decoder().convert(response.bodyBytes));
    await client.close();
    if(response.statusCode==200){
        final _listQuestions = new  Questions.fromJsonList(decodeData);
        listQuestion    = _listQuestions.items;
        return listQuestion;
     
    }else if(response.statusCode==401 || response.statusCode==403){
      throw TokenException();
    }else{
      throw GenericException();
    }
  }



}
