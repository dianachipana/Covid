part of 'transaction_bloc.dart';

abstract class TransactionEvent extends Equatable {
  const TransactionEvent();
}

class DoGetTransactions extends TransactionEvent{

  DoGetTransactions();
  List<Object> get props => [];
}

