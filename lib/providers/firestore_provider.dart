import 'package:flutter/material.dart';
import 'package:flutter_firestore_test/data/dialect_list.dart';
import 'package:flutter_firestore_test/data/syllabaries.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_firestore_test/repository/firebase_repository.dart';
// import 'package:flutter_firestore_test/interfaces/firestore_interface.dart';
import 'package:flutter_firestore_test/state/data_State.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final syllbariesProvider = FutureProvider<List<Syllabaries>>((ref) async {
  return FirebaseRepository().getSyllabaries();
});

final dialectsProvider =
    FutureProvider.family<List<DialectList>, String>((ref, id) async {
  return FirebaseRepository().getDirects(id);
});

final searchDirectsListProvider =
    StateNotifierProvider<SearchWords, List<DialectList>>(
  (ref) => SearchWords(String),
);

class SearchWords extends StateNotifier<List<DialectList>> {
  SearchWords(state) : super([]);

  Future searchDirects(String searchWord) async {
    return searchWord != ""
        ? state = await FirebaseRepository().searchDirects(searchWord)
        : state = [];
  }
}
