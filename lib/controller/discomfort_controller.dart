import 'package:being/models/discomfort.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DiscomfortController extends GetxController {
  final Rx<List<Discomfort>> _discomfortList = Rx<List<Discomfort>>([]);

  List<Discomfort> get discomfortList => _discomfortList.value;

  @override
  void onInit() {
    _discomfortList.bindStream(FirebaseFirestore.instance
        .collection("discomforts")
        .snapshots()
        .map((QuerySnapshot queru) {
      List<Discomfort> retVal = [];
      for (var element in queru.docs) {
        retVal.add(Discomfort.fromSnap(element));
      }

      return retVal;
    }));

    super.onInit();
  }
}
