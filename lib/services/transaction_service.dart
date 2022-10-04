import 'package:airplane/model/transacrion_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionService {
  CollectionReference transactionReference = FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      transactionReference.add({
        'destination': transaction.destination.toJson(),
        'amountOfTraveller': transaction.amountOfTraveler,
        'selectedSeat': transaction.selectedSeat,
        'insurance': transaction.insurance,
        'refundable': transaction.refundable,
        'vat': transaction.vat,
        'price': transaction.price,
        'grandTotal': transaction.grandTotal,
      });
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }

  Future<List<TransactionModel>> fetchTransaction() async {
    try {
      QuerySnapshot result = await transactionReference.get();

      List<TransactionModel> transactions =
          result.docs.map((e) => TransactionModel.fromJson(e.id, e.data() as Map<String, dynamic>)).toList();

      return transactions;
    } catch (e) {
      // ignore: use_rethrow_when_possible
      throw e;
    }
  }
}
