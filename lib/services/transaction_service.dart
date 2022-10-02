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
}
