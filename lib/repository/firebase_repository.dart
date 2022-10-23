import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firestore_test/data/dialect_list.dart';
import 'package:flutter_firestore_test/data/syllabaries.dart';
import 'package:flutter_firestore_test/interfaces/firestore_interface.dart';
import 'package:flutter_firestore_test/repository/base_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FirebaseRepository implements BaseRepository {
  Future<List<Syllabaries>> getSyllabaries() async {
    final _syllabariesCollection =
        FirebaseFirestore.instance.collectionGroup("Syllabaries");
    final snapshot = await _syllabariesCollection.get();
    final documentList = snapshot.docs;
    print("documentList:${documentList}");
    final data = documentList
        .map((e) => Syllabaries(
              id: e.id,
              Syllabary: e.get("Syllabary"),
            ))
        .toList();
    return data;
  }

  Future<List<DialectList>> getDirects(String id) async {
    final snapshot = await FirebaseFirestore.instance
        .collection("Syllabaries")
        .doc(id)
        .collection("Dialects")
        .get();
    final documentList = snapshot.docs;
    print("documentList:${documentList}");
    final data = documentList
        .map((e) => DialectList(
            Discription: e.get("Discription"),
            Word: e.get("Word"),
            isPositive: e.get("isPositive")))
        .toList();
    return data;
  }

  Future<List<DialectList>> searchDirects(String searchWord) async {
    List<DialectList> _wordslist = [];
    final snapshot =
        await FirebaseFirestore.instance.collection("Syllabaries").get();
    final documentList = snapshot.docs;
    for (var item in documentList) {
      final _list = await FirebaseFirestore.instance
          .collection("Syllabaries")
          .doc(item.id)
          .collection("Dialects")
          .get();
      final documentList = _list.docs;
      final _words = documentList
          .map((e) => DialectList(
              Discription: e.get("Discription"),
              Word: e.get("Word"),
              isPositive: e.get("isPositive")))
          .toList();
      for (var item in _words) {
        if (item.Discription.contains(searchWord) && searchWord != "") {
          _wordslist.add(DialectList(
              Discription: item.Discription,
              Word: item.Word,
              isPositive: item.isPositive));
        }
      }
    }
    print("_wordslist:${_wordslist}");
    return searchWord != "" ? _wordslist : [];
  }
}
