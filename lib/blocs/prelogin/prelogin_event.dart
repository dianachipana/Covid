part of 'prelogin_bloc.dart';

abstract class PreloginEvent extends Equatable {
  const PreloginEvent();
}

class DoPreloginEvent extends PreloginEvent{
  final String password;
  final String username;
  DoPreloginEvent({this.password, this.username});
  @override
  List<Object> get props => [password, username];
}