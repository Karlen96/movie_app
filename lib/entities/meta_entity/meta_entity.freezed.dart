// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaEntity _$MetaEntityFromJson(Map<String, dynamic> json) {
  return _MetaEntity.fromJson(json);
}

/// @nodoc
mixin _$MetaEntity {
  int get page => throw _privateConstructorUsedError;
  List<MovieEntity> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaEntityCopyWith<MetaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaEntityCopyWith<$Res> {
  factory $MetaEntityCopyWith(
          MetaEntity value, $Res Function(MetaEntity) then) =
      _$MetaEntityCopyWithImpl<$Res, MetaEntity>;
  @useResult
  $Res call({int page, List<MovieEntity> results});
}

/// @nodoc
class _$MetaEntityCopyWithImpl<$Res, $Val extends MetaEntity>
    implements $MetaEntityCopyWith<$Res> {
  _$MetaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaEntityCopyWith<$Res>
    implements $MetaEntityCopyWith<$Res> {
  factory _$$_MetaEntityCopyWith(
          _$_MetaEntity value, $Res Function(_$_MetaEntity) then) =
      __$$_MetaEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, List<MovieEntity> results});
}

/// @nodoc
class __$$_MetaEntityCopyWithImpl<$Res>
    extends _$MetaEntityCopyWithImpl<$Res, _$_MetaEntity>
    implements _$$_MetaEntityCopyWith<$Res> {
  __$$_MetaEntityCopyWithImpl(
      _$_MetaEntity _value, $Res Function(_$_MetaEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
  }) {
    return _then(_$_MetaEntity(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaEntity implements _MetaEntity {
  const _$_MetaEntity(
      {this.page = 1, final List<MovieEntity> results = const <MovieEntity>[]})
      : _results = results;

  factory _$_MetaEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MetaEntityFromJson(json);

  @override
  @JsonKey()
  final int page;
  final List<MovieEntity> _results;
  @override
  @JsonKey()
  List<MovieEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MetaEntity(page: $page, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaEntity &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaEntityCopyWith<_$_MetaEntity> get copyWith =>
      __$$_MetaEntityCopyWithImpl<_$_MetaEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaEntityToJson(
      this,
    );
  }
}

abstract class _MetaEntity implements MetaEntity {
  const factory _MetaEntity({final int page, final List<MovieEntity> results}) =
      _$_MetaEntity;

  factory _MetaEntity.fromJson(Map<String, dynamic> json) =
      _$_MetaEntity.fromJson;

  @override
  int get page;
  @override
  List<MovieEntity> get results;
  @override
  @JsonKey(ignore: true)
  _$$_MetaEntityCopyWith<_$_MetaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
