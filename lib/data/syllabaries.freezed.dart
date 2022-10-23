// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'syllabaries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Syllabaries _$SyllabariesFromJson(Map<String, dynamic> json) {
  return _Syllabaries.fromJson(json);
}

/// @nodoc
class _$SyllabariesTearOff {
  const _$SyllabariesTearOff();

  _Syllabaries call({required String id, required String Syllabary}) {
    return _Syllabaries(
      id: id,
      Syllabary: Syllabary,
    );
  }

  Syllabaries fromJson(Map<String, Object> json) {
    return Syllabaries.fromJson(json);
  }
}

/// @nodoc
const $Syllabaries = _$SyllabariesTearOff();

/// @nodoc
mixin _$Syllabaries {
  String get id => throw _privateConstructorUsedError;
  String get Syllabary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SyllabariesCopyWith<Syllabaries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyllabariesCopyWith<$Res> {
  factory $SyllabariesCopyWith(
          Syllabaries value, $Res Function(Syllabaries) then) =
      _$SyllabariesCopyWithImpl<$Res>;
  $Res call({String id, String Syllabary});
}

/// @nodoc
class _$SyllabariesCopyWithImpl<$Res> implements $SyllabariesCopyWith<$Res> {
  _$SyllabariesCopyWithImpl(this._value, this._then);

  final Syllabaries _value;
  // ignore: unused_field
  final $Res Function(Syllabaries) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? Syllabary = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      Syllabary: Syllabary == freezed
          ? _value.Syllabary
          : Syllabary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SyllabariesCopyWith<$Res>
    implements $SyllabariesCopyWith<$Res> {
  factory _$SyllabariesCopyWith(
          _Syllabaries value, $Res Function(_Syllabaries) then) =
      __$SyllabariesCopyWithImpl<$Res>;
  @override
  $Res call({String id, String Syllabary});
}

/// @nodoc
class __$SyllabariesCopyWithImpl<$Res> extends _$SyllabariesCopyWithImpl<$Res>
    implements _$SyllabariesCopyWith<$Res> {
  __$SyllabariesCopyWithImpl(
      _Syllabaries _value, $Res Function(_Syllabaries) _then)
      : super(_value, (v) => _then(v as _Syllabaries));

  @override
  _Syllabaries get _value => super._value as _Syllabaries;

  @override
  $Res call({
    Object? id = freezed,
    Object? Syllabary = freezed,
  }) {
    return _then(_Syllabaries(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      Syllabary: Syllabary == freezed
          ? _value.Syllabary
          : Syllabary // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Syllabaries with DiagnosticableTreeMixin implements _Syllabaries {
  const _$_Syllabaries({required this.id, required this.Syllabary});

  factory _$_Syllabaries.fromJson(Map<String, dynamic> json) =>
      _$$_SyllabariesFromJson(json);

  @override
  final String id;
  @override
  final String Syllabary;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Syllabaries(id: $id, Syllabary: $Syllabary)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Syllabaries'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('Syllabary', Syllabary));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Syllabaries &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.Syllabary, Syllabary) ||
                const DeepCollectionEquality()
                    .equals(other.Syllabary, Syllabary)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(Syllabary);

  @JsonKey(ignore: true)
  @override
  _$SyllabariesCopyWith<_Syllabaries> get copyWith =>
      __$SyllabariesCopyWithImpl<_Syllabaries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SyllabariesToJson(this);
  }
}

abstract class _Syllabaries implements Syllabaries {
  const factory _Syllabaries({required String id, required String Syllabary}) =
      _$_Syllabaries;

  factory _Syllabaries.fromJson(Map<String, dynamic> json) =
      _$_Syllabaries.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get Syllabary => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SyllabariesCopyWith<_Syllabaries> get copyWith =>
      throw _privateConstructorUsedError;
}
