import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:covid/logics/transaction_logic.dart';
import 'package:covid/models/transaction.dart';
import 'package:equatable/equatable.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransactionLogic transactionLogic;
  TransactionBloc({this.transactionLogic});
  @override
  TransactionState get initialState => TransactionInitial();

  @override
  Stream<TransactionState> mapEventToState(
    TransactionEvent event,
  ) async* {
    if(event is DoGetTransactions){
      yield * _doGetTransactions(event);
    }
  }

  Stream<TransactionState> _doGetTransactions(DoGetTransactions event) async* {
    yield LoadingTransaction();
    try {
      List<Transaction> response = await transactionLogic.getTransactions();
      yield ResponseDoGetTransactions(transactions: response);
    }catch(e){
      if((e is AccountException || e == AccountException) && e.message != null){
        yield ErrorTransaction(message: e.message);
      }else if(e is TokenException || e == TokenException){
        yield ErrorTransaction(message:'Sesión caducada. Ingrese nuevamente');
      }else{
        yield ErrorTransaction(message:'Ocurrió un error');
      }
    }
  }


}
