part of 'question_bloc.dart';

abstract class QuestionState extends Equatable {
  const QuestionState();
}

class QuestionInitial extends QuestionState {
  @override
  List<Object> get props => [];
}

class LoadingQuestion extends QuestionState{
  @override
  List<Object> get props => [];
}

class ErrorQuestion extends QuestionState{
  final String message;
  ErrorQuestion({this.message});
  @override
  List<Object> get props => null;
}

class ResponseDoGetQuestions extends QuestionState{
  final List<Question> questions;
  ResponseDoGetQuestions({this.questions});
  List<Object> get props => [questions];
}

class ResponseDoDeposit extends QuestionState{
  final String response;

  ResponseDoDeposit({this.response});
  @override
  List<Object> get props => [response];
}


