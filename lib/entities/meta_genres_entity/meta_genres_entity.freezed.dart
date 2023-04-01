// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_genres_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaGenresEntity _$MetaGenresEntityFromJson(Map<String, dynamic> json) {
  return _MetaGenresEntity.fromJson(json);
}

/// @nodoc
mixin _$MetaGenresEntity {
  List<GenreEntity> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaGenresEntityCopyWith<MetaGenresEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaGenresEntityCopyWith<$Res> {
  factory $MetaGenresEntityCopyWith(
          MetaGenresEntity value, $Res Function(MetaGenresEntity) then) =
      _$MetaGenresEntityCopyWithImpl<$Res, MetaGenresEntity>;
  @useResult
  $Res call({List<GenreEntity> genres});
}

/// @nodoc
class _$MetaGenresEntityCopyWithImpl<$Res, $Val extends MetaGenresEntity>
    implements $MetaGenresEntityCopyWith<$Res> {
  _$MetaGenresEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaGenresEntityCopyWith<$Res>
    implements $MetaGenresEntityCopyWith<$Res> {
  factory _$$_MetaGenresEntityCopyWith(
          _$_MetaGenresEntity value, $Res Function(_$_MetaGenresEntity) then) =
      __$$_MetaGenresEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GenreEntity> genres});
}

/// @nodoc
class __$$_MetaGenresEntityCopyWithImpl<$Res>
    extends _$MetaGenresEntityCopyWithImpl<$Res, _$_MetaGenresEntity>
    implements _$$_MetaGenresEntityCopyWith<$Res> {
  __$$_MetaGenresEntityCopyWithImpl(
      _$_MetaGenresEntity _value, $Res Function(_$_MetaGenresEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$_MetaGenresEntity(
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenreEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaGenresEntity implements _MetaGenresEntity {
  const _$_MetaGenresEntity(
      {final List<GenreEntity> genres = const <GenreEntity>[]})
      : _genres = genres;

  factory _$_MetaGenresEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MetaGenresEntityFromJson(json);

  final List<GenreEntity> _genres;
  @override
  @JsonKey()
  List<GenreEntity> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'MetaGenresEntity(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaGenresEntity &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaGenresEntityCopyWith<_$_MetaGenresEntity> get copyWith =>
      __$$_MetaGenresEntityCopyWithImpl<_$_MetaGenresEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaGenresEntityToJson(
      this,
    );
  }
}

abstract class _MetaGenresEntity implements MetaGenresEntity {
  const factory _MetaGenresEntity({final List<GenreEntity> genres}) =
      _$_MetaGenresEntity;

  factory _MetaGenresEntity.fromJson(Map<String, dynamic> json) =
      _$_MetaGenresEntity.fromJson;

  @override
  List<GenreEntity> get genres;
  @override
  @JsonKey(ignore: true)
  _$$_MetaGenresEntityCopyWith<_$_MetaGenresEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
