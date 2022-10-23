// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dialect_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DialectList _$DialectListFromJson(Map<String, dynamic> json) {
  return _DialectList.fromJson(json);
}

/// @nodoc
class _$DialectListTearOff {
  const _$DialectListTearOff();

  _DialectList call(
      {required String Discription,
      required String Word,
      required bool isPositive}) {
    return _DialectList(
      Discription: Discription,
      Word: Word,
      isPositive: isPositive,
    );
  }

  DialectList fromJson(Map<String, Object> json) {
    return DialectList.fromJson(json);
  }
}

/// @nodoc
const $DialectList = _$DialectListTearOff();

/// @nodoc
mixin _$DialectList {
  String get Discription => throw _privateConstructorUsedError;
  String get Word => throw _privateConstructorUsedError;
  bool get isPositive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DialectListCopyWith<DialectList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialectListCopyWith<$Res> {
  factory $DialectListCopyWith(
          DialectList value, $Res Function(DialectList) then) =
      _$DialectListCopyWithImpl<$Res>;
  $Res call({String Discription, String Word, bool isPositive});
}

/// @nodoc
class _$DialectListCopyWithImpl<$Res> implements $DialectListCopyWith<$Res> {
  _$DialectListCopyWithImpl(this._value, this._then);

  final DialectList _value;
  // ignore: unused_field
  final $Res Function(DialectList) _then;

  @override
  $Res call({
    Object? Discription = freezed,
    Object? Word = freezed,
    Object? isPositive = freezed,
  }) {
    return _then(_value.copyWith(
      Discription: Discription == freezed
          ? _value.Discription
          : Discription // ignore: cast_nullable_to_non_nullable
              as String,
      Word: Word == freezed
          ? _value.Word
          : Word // ignore: cast_nullable_to_non_nullable
              as String,
      isPositive: isPositive == freezed
          ? _value.isPositive
          : isPositive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DialectListCopyWith<$Res>
    implements $DialectListCopyWith<$Res> {
  factory _$DialectListCopyWith(
          _DialectList value, $Res Function(_DialectList) then) =
      __$DialectListCopyWithImpl<$Res>;
  @override
  $Res call({String Discription, String Word, bool isPositive});
}

/// @nodoc
class __$DialectListCopyWithImpl<$Res> extends _$DialectListCopyWithImpl<$Res>
    implements _$DialectListCopyWith<$Res> {
  __$DialectListCopyWithImpl(
      _DialectList _value, $Res Function(_DialectList) _then)
      : super(_value, (v) => _then(v as _DialectList));

  @override
  _DialectList get _value => super._value as _DialectList;

  @override
  $Res call({
    Object? Discription = freezed,
    Object? Word = freezed,
    Object? isPositive = freezed,
  }) {
    return _then(_DialectList(
      Discription: Discription == freezed
          ? _value.Discription
          : Discription // ignore: cast_nullable_to_non_nullable
              as String,
      Word: Word == freezed
          ? _value.Word
          : Word // ignore: cast_nullable_to_non_nullable
              as String,
      isPositive: isPositive == freezed
          ? _value.isPositive
          : isPositive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DialectList with DiagnosticableTreeMixin implements _DialectList {
  const _$_DialectList(
      {required this.Discription,
      required this.Word,
      required this.isPositive});

  factory _$_DialectList.fromJson(Map<String, dynamic> json) =>
      _$$_DialectListFromJson(json);

  @override
  final String Discription;
  @override
  final String Word;
  @override
  final bool isPositive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DialectList(Discription: $Discription, Word: $Word, isPositive: $isPositive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DialectList'))
      ..add(DiagnosticsProperty('Discription', Discription))
      ..add(DiagnosticsProperty('Word', Word))
      ..add(DiagnosticsProperty('isPositive', isPositive));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DialectList &&
            (identical(other.Discription, Discription) ||
                const DeepCollectionEquality()
                    .equals(other.Discription, Discription)) &&
            (identical(other.Word, Word) ||
                const DeepCollectionEquality().equals(other.Word, Word)) &&
            (identical(other.isPositive, isPositive) ||
                const DeepCollectionEquality()
                    .equals(other.isPositive, isPositive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(Discription) ^
      const DeepCollectionEquality().hash(Word) ^
      const DeepCollectionEquality().hash(isPositive);

  @JsonKey(ignore: true)
  @override
  _$DialectListCopyWith<_DialectList> get copyWith =>
      __$DialectListCopyWithImpl<_DialectList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DialectListToJson(this);
  }
}

abstract class _DialectList implements DialectList {
  const factory _DialectList(
      {required String Discription,
      required String Word,
      required bool isPositive}) = _$_DialectList;

  factory _DialectList.fromJson(Map<String, dynamic> json) =
      _$_DialectList.fromJson;

  @override
  String get Discription => throw _privateConstructorUsedError;
  @override
  String get Word => throw _privateConstructorUsedError;
  @override
  bool get isPositive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DialectListCopyWith<_DialectList> get copyWith =>
      throw _privateConstructorUsedError;
}
