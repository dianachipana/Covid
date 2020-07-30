import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:covid/logics/authentication_logic.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthenticationLogic authenticationLogic;
  SignupBloc({this.authenticationLogic});
  
  @override
  SignupState get initialState => SignupInitial();

  @override
  Stream<SignupState> mapEventToState(
    SignupEvent event,
  ) async* {
    if(event is DoSignupEvent){
      yield * _doSignup(event);
    }
  }

  Stream<SignupState> _doSignup(DoSignupEvent event) async* {
    yield LoadingSignup();
    try {
      await authenticationLogic.signup(name: event.name, lastName: event.lastName, password: event.password, username: event.username, cellphone: event.cellphone, birthDate: event.birthDate);
      yield ResponseDoSignup();
    }catch(e){
      if((e is AccountException || e == AccountException) && e.message != null){
        yield ErrorSignup(message: e.message);
      }else if(e is TokenException || e == TokenException){
        yield ErrorSignup(message: 'La sesión caducó');
      }else{
        yield ErrorSignup(message:'Ocurrió un error');
      }
    }
  }

}
