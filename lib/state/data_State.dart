import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firestore_test/data/dialect_list.dart';
import 'package:flutter_firestore_test/data/syllabaries.dart';
import 'package:flutter_firestore_test/interfaces/firestore_interface.dart';
import 'package:flutter_firestore_test/repository/base_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataState {
  BaseRepository? _repository;
  DataState(this._repository);

  getSyllabaries() {
    _repository?.getSyllabaries();
  }

  getDirects(String id) {
    _repository?.getDirects(id);
  }
}
