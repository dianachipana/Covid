part of 'transaction_bloc.dart';

abstract class TransactionEvent extends Equatable {
  const TransactionEvent();
}

class DoGetTransactions extends TransactionEvent{
  final int filter;

  DoGetTransactions({this.filter});
  List<Object> get props => [];
}

