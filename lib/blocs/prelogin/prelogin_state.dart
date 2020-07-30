part of 'prelogin_bloc.dart';

abstract class PreloginState extends Equatable {
  const PreloginState();
}

class PreloginInitial extends PreloginState {
  @override
  List<Object> get props => [];
}

class LoadingPreLogin extends PreloginState{
  @override
  List<Object> get props => [];
}

class ResponseDoPrelogin extends PreloginState{
  final Response response;
  ResponseDoPrelogin({this.response});
  @override
  List<Object> get props => [response];
}

class ErrorPrelogin extends PreloginState{
  final String message;

  ErrorPrelogin({this.message});

  @override
  List<Object> get props => null;
}
