import 'package:airplane/model/destination_model.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final String id;
  final int amountOfTraveler;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  const TransactionModel({
    required this.destination,
    this.id = '',
    this.amountOfTraveler = 0,
    this.selectedSeat = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) {
    return TransactionModel(
      destination: DestinationModel.fromJson(json['destination']['id'], json['destination']),
      id: id,
      amountOfTraveler: json['amountOfTraveler'],
      selectedSeat: json['selectedSeat'],
      insurance: json['insurance'],
      refundable: json['refundable'],
      vat: json['vat'],
      price: json['price'],
      grandTotal: json['grandTotal'],
    );
  }

  @override
  List<Object?> get props => [
        destination,
        id,
        amountOfTraveler,
        selectedSeat,
        insurance,
        refundable,
        vat,
        price,
        grandTotal,
      ];
}
