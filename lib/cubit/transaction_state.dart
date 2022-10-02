part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransacrionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionSuccess extends TransactionState {
  final TransactionModel transaction;

  const TransactionSuccess({required this.transaction});

  @override
  List<Object> get props => [transaction];
}

class TransactionFailed extends TransactionState {
  final String error;

  const TransactionFailed({required this.error});

  @override
  List<Object> get props => [error];
}
