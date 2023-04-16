import 'package:cloud_firestore/cloud_firestore.dart';

class Discomfort {
  String title;
  List<dynamic> objectives;

  Discomfort({
    required this.title,
    required this.objectives,
  });

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "objectives": objectives,
    };
  }

  static Discomfort fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Discomfort(
        title: snapshot['title'], objectives: snapshot['objectives']);
  }
}
