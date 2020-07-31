import 'dart:async';
import 'package:covid/logics/authentication_logic.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart';
import 'package:bloc/bloc.dart';


part 'prelogin_event.dart';
part 'prelogin_state.dart';

class PreloginBloc extends Bloc<PreloginEvent, PreloginState> {
  final AuthenticationLogic authenticationLogic;

  PreloginBloc({this.authenticationLogic});

  @override
  PreloginState get initialState => PreloginInitial();

  @override
  Stream<PreloginState> mapEventToState(
    PreloginEvent event,
  ) async* {
    if(event is DoPreloginEvent){
      yield * _doprelogin(event);
    }
  }

  Stream<PreloginState> _doprelogin(DoPreloginEvent event) async* {
    yield LoadingPreLogin();
    try {
      await authenticationLogic.prelogin(password: event.password, username: event.username);
      yield ResponseDoPrelogin();
    }catch(e){
      if(e is AccountException || e == AccountException){
        yield ErrorPrelogin(message: e.message);
      }else if(e is TokenException || e == TokenException){
        yield ErrorPrelogin(message: 'La sesión caducó');
      }else{
        yield ErrorPrelogin(message:'Ocurrió un error');
      }
    }
  }

}
