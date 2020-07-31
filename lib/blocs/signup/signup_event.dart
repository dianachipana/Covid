part of 'signup_bloc.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();
}

class DoSignupEvent extends SignupEvent{
  final String username;
  final String name;
  final String cellphone;
  final String lastName;
  final String password;
  final String birthDate;
  DoSignupEvent({this.cellphone, this.lastName, this.username, this.password, this.name, this.birthDate});
  @override
  List<Object> get props => [cellphone, lastName, username, password, name,birthDate];
}

