// ignore_for_file: use_rethrow_when_possible

import 'package:airplane/model/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DetinationService {
  final CollectionReference _collection = FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot result = await _collection.get();
      List<DestinationModel> destinations = result.docs.map((e) {
        return DestinationModel.fromJson(e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
