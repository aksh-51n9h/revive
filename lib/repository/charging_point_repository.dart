import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:revive/models/charging_point.dart';

class ChargingPointRepository {
  final FirebaseFirestore db = FirebaseFirestore.instance;

  late CollectionReference<ChargingPoint> chargingPointCollectionRef =
      db.collection("charging_points").withConverter(
            fromFirestore: (docSnap, _) =>
                ChargingPoint.fromMap(docSnap.data() ?? {}),
            toFirestore: (chargingPoint, _) => chargingPoint.toMap(),
          );

  Stream<List<ChargingPoint>> getChargingPoint(ChargingPoint object) {
    return chargingPointCollectionRef
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }

  Future<bool> addChargingPoint(ChargingPoint object) async {
    try {
      await chargingPointCollectionRef.add(object);
    } catch (e) {
      throw AddDocException();
    }

    return true;
  }
}

class AddDocException implements Exception {}
