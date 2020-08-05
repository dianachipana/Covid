part of 'question_bloc.dart';

abstract class QuestionEvent extends Equatable {
  const QuestionEvent();
}

class DoGetQuestions extends QuestionEvent{


  DoGetQuestions();
  List<Object> get props => [];
}

