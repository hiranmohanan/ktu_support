part of 'firebase_services.dart';

class FirebaseServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future getHome() async {
    try {
      debugPrint('Getting Home');
      final querySnapshot = await _firestore.collection('home').get();

      final homeData = querySnapshot.docs.map((doc) => doc.data()).toList();
      ;
      debugPrint('Home Data: $homeData');
      return querySnapshot.docs;
    } catch (e) {
      debugPrint('Error: $e');
      return e;
    }
  }
}
