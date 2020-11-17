import "package:cloud_firestore/cloud_firestore.dart";

class DatabaseService {
  Future<void> addTest(Map testMap, String testID) async {
    // ignore: deprecated_member_use
    await Firestore.instance
        .collection("Test")
        // ignore: deprecated_member_use
        .document(testID)
        // ignore: deprecated_member_use
        .setData(testMap)
        .catchError((e) {
      print(e.toString());
    });
  }
}
