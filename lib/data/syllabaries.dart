import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firestore_test/data/dialect_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'syllabaries.freezed.dart';
part 'syllabaries.g.dart';

@freezed
class Syllabaries with _$Syllabaries {
  const factory Syllabaries({
    required String id,
    required String Syllabary,
    // required List<DialectList> Dialects,
  }) = _Syllabaries;

  factory Syllabaries.fromJson(Map<String, dynamic> json) =>
      _$SyllabariesFromJson(json);
}
