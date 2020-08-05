class Questions{
  List<Question> items = new List();
  Questions();
  Questions.fromJsonList(List<dynamic> jsonList){
    if(jsonList==null){
      return;
    }else{
      for (var item in jsonList) {
        final questions = new Question.fromJson(item);
        items.add(questions);
      }
    }
  }
}

class Question{
  String pregunta;
  String respuesta;
  String respuestaResume;
  int id;


  Question({
    this.pregunta,
    this.respuesta,
    this.id,
    this.respuestaResume,
  });

  Question.fromJson(Map<String, dynamic> json){
  
    id      = json['id'];
    pregunta  = json['pregunta'];
    respuestaResume = json['respuestaResume'];
    respuesta  = json['respuesta'];
  } 

}


