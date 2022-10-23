import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'dialect_list.freezed.dart';
part 'dialect_list.g.dart';

@freezed
class DialectList with _$DialectList {
  const factory DialectList({
    required String Discription,
    required String Word,
    required bool isPositive,
  }) = _DialectList;

  factory DialectList.fromJson(Map<String, dynamic> json) =>
      _$DialectListFromJson(json);
}
