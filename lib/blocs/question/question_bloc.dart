import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:covid/logics/question_logic.dart';
import 'package:covid/models/Question.dart';
import 'package:equatable/equatable.dart';

part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final QuestionLogic questionLogic;
  QuestionBloc({this.questionLogic});
  @override
  QuestionState get initialState => QuestionInitial();

  @override
  Stream<QuestionState> mapEventToState(
    QuestionEvent event,
  ) async* {
    if(event is DoGetQuestions){
      yield * _doGetQuestions(event);
    }
  }

  Stream<QuestionState> _doGetQuestions(DoGetQuestions event) async* {
    yield LoadingQuestion();
    try {
      List<Question> response = await questionLogic.getQuestions();
      yield ResponseDoGetQuestions(questions: response);
    }catch(e){
      if((e is AccountException || e == AccountException) && e.message != null){
        yield ErrorQuestion(message: e.message);
      }else if(e is TokenException || e == TokenException){
        yield ErrorQuestion(message:'Sesión caducada. Ingrese nuevamente');
      }else{
        yield ErrorQuestion(message:'Ocurrió un error');
      }
    }
  }


}
