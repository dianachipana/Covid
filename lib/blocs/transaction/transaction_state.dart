part of 'transaction_bloc.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();
}

class TransactionInitial extends TransactionState {
  @override
  List<Object> get props => [];
}

class LoadingTransaction extends TransactionState{
  @override
  List<Object> get props => [];
}

class ErrorTransaction extends TransactionState{
  final String message;
  ErrorTransaction({this.message});
  @override
  List<Object> get props => null;
}

class ResponseDoGetTransactions extends TransactionState{
  final List<Transaction> transactions;
  ResponseDoGetTransactions({this.transactions});
  List<Object> get props => [transactions];
}

class ResponseDoDeposit extends TransactionState{
  final String response;

  ResponseDoDeposit({this.response});
  @override
  List<Object> get props => [response];
}


