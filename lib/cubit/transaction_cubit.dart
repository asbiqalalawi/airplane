import 'package:airplane/model/transacrion_model.dart';
import 'package:airplane/services/transaction_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransacrionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionLoading());
      await TransactionService().createTransaction(transaction);
      emit(const TransactionSuccess(transaction: []));
    } catch (e) {
      emit(TransactionFailed(error: e.toString()));
    }
  }

  void fetchTransaction() async {
    try {
      emit(TransactionLoading());
      List<TransactionModel> transaction = await TransactionService().fetchTransaction();
      emit(TransactionSuccess(transaction: transaction));
    } catch (e) {
      emit(TransactionFailed(error: e.toString()));
    }
  }
}
