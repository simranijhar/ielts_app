import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  Future<void> addTest(Map testMap, String testID) async {
    await Firestore.instance
        .collection("Test")
        .document(testID)
        .setData(testMap)
        .catchError((e) {
      print(e.toString());
    });
  }
}
