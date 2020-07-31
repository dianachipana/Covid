part of 'signup_bloc.dart';

abstract class SignupState extends Equatable {
  const SignupState();
}

class SignupInitial extends SignupState {
  @override
  List<Object> get props => [];
}

class LoadingSignup extends SignupState{
  @override
  List<Object> get props => [];
}

class ResponseDoSignup extends SignupState{
  final Response response;
  ResponseDoSignup({this.response});
  @override
  List<Object> get props => [response];
}

class ErrorSignup extends SignupState{
  final String message;
  ErrorSignup({this.message});
  @override
  List<Object> get props => null;
}
