import 'package:airplane/model/transacrion_model.dart';
import 'package:airplane/services/transaction_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'transacrion_state.dart';

class TransacrionCubit extends Cubit<TransacrionState> {
  TransacrionCubit() : super(TransacrionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionLoading());
      await TransactionService().createTransaction(transaction);
      emit(TransactionSuccess(transaction: transaction));
    } catch (e) {
      emit(TransactionFailed(error: e.toString()));
    }
  }
}
