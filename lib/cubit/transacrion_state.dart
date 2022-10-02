part of 'transacrion_cubit.dart';

abstract class TransacrionState extends Equatable {
  const TransacrionState();

  @override
  List<Object> get props => [];
}

class TransacrionInitial extends TransacrionState {}

class TransactionLoading extends TransacrionState {}

class TransactionSuccess extends TransacrionState {
  final TransactionModel transaction;

  const TransactionSuccess({required this.transaction});

  @override
  List<Object> get props => [transaction];
}

class TransactionFailed extends TransacrionState {
  final String error;

  const TransactionFailed({required this.error});

  @override
  List<Object> get props => [error];
}
