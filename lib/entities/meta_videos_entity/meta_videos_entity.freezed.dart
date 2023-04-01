// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_videos_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaVideosEntity _$MetaVideosEntityFromJson(Map<String, dynamic> json) {
  return _MetaVideosEntity.fromJson(json);
}

/// @nodoc
mixin _$MetaVideosEntity {
  List<VideoEntity> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaVideosEntityCopyWith<MetaVideosEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaVideosEntityCopyWith<$Res> {
  factory $MetaVideosEntityCopyWith(
          MetaVideosEntity value, $Res Function(MetaVideosEntity) then) =
      _$MetaVideosEntityCopyWithImpl<$Res, MetaVideosEntity>;
  @useResult
  $Res call({List<VideoEntity> results});
}

/// @nodoc
class _$MetaVideosEntityCopyWithImpl<$Res, $Val extends MetaVideosEntity>
    implements $MetaVideosEntityCopyWith<$Res> {
  _$MetaVideosEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaVideosEntityCopyWith<$Res>
    implements $MetaVideosEntityCopyWith<$Res> {
  factory _$$_MetaVideosEntityCopyWith(
          _$_MetaVideosEntity value, $Res Function(_$_MetaVideosEntity) then) =
      __$$_MetaVideosEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VideoEntity> results});
}

/// @nodoc
class __$$_MetaVideosEntityCopyWithImpl<$Res>
    extends _$MetaVideosEntityCopyWithImpl<$Res, _$_MetaVideosEntity>
    implements _$$_MetaVideosEntityCopyWith<$Res> {
  __$$_MetaVideosEntityCopyWithImpl(
      _$_MetaVideosEntity _value, $Res Function(_$_MetaVideosEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_MetaVideosEntity(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaVideosEntity implements _MetaVideosEntity {
  const _$_MetaVideosEntity(
      {final List<VideoEntity> results = const <VideoEntity>[]})
      : _results = results;

  factory _$_MetaVideosEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MetaVideosEntityFromJson(json);

  final List<VideoEntity> _results;
  @override
  @JsonKey()
  List<VideoEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MetaVideosEntity(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaVideosEntity &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaVideosEntityCopyWith<_$_MetaVideosEntity> get copyWith =>
      __$$_MetaVideosEntityCopyWithImpl<_$_MetaVideosEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaVideosEntityToJson(
      this,
    );
  }
}

abstract class _MetaVideosEntity implements MetaVideosEntity {
  const factory _MetaVideosEntity({final List<VideoEntity> results}) =
      _$_MetaVideosEntity;

  factory _MetaVideosEntity.fromJson(Map<String, dynamic> json) =
      _$_MetaVideosEntity.fromJson;

  @override
  List<VideoEntity> get results;
  @override
  @JsonKey(ignore: true)
  _$$_MetaVideosEntityCopyWith<_$_MetaVideosEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
