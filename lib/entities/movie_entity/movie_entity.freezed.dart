// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieEntity _$MovieEntityFromJson(Map<String, dynamic> json) {
  return _MovieEntity.fromJson(json);
}

/// @nodoc
mixin _$MovieEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  MetaVideosEntity? get videos => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieEntityCopyWith<MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEntityCopyWith<$Res> {
  factory $MovieEntityCopyWith(
          MovieEntity value, $Res Function(MovieEntity) then) =
      _$MovieEntityCopyWithImpl<$Res, MovieEntity>;
  @useResult
  $Res call(
      {int id,
      String title,
      MetaVideosEntity? videos,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath});

  $MetaVideosEntityCopyWith<$Res>? get videos;
}

/// @nodoc
class _$MovieEntityCopyWithImpl<$Res, $Val extends MovieEntity>
    implements $MovieEntityCopyWith<$Res> {
  _$MovieEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? videos = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as MetaVideosEntity?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaVideosEntityCopyWith<$Res>? get videos {
    if (_value.videos == null) {
      return null;
    }

    return $MetaVideosEntityCopyWith<$Res>(_value.videos!, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieEntityCopyWith<$Res>
    implements $MovieEntityCopyWith<$Res> {
  factory _$$_MovieEntityCopyWith(
          _$_MovieEntity value, $Res Function(_$_MovieEntity) then) =
      __$$_MovieEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      MetaVideosEntity? videos,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath});

  @override
  $MetaVideosEntityCopyWith<$Res>? get videos;
}

/// @nodoc
class __$$_MovieEntityCopyWithImpl<$Res>
    extends _$MovieEntityCopyWithImpl<$Res, _$_MovieEntity>
    implements _$$_MovieEntityCopyWith<$Res> {
  __$$_MovieEntityCopyWithImpl(
      _$_MovieEntity _value, $Res Function(_$_MovieEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? videos = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_$_MovieEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as MetaVideosEntity?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieEntity extends _MovieEntity {
  const _$_MovieEntity(
      {required this.id,
      required this.title,
      this.videos,
      this.overview,
      @JsonKey(name: 'poster_path') this.posterPath})
      : super._();

  factory _$_MovieEntity.fromJson(Map<String, dynamic> json) =>
      _$$_MovieEntityFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final MetaVideosEntity? videos;
  @override
  final String? overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @override
  String toString() {
    return 'MovieEntity(id: $id, title: $title, videos: $videos, overview: $overview, posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, videos, overview, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieEntityCopyWith<_$_MovieEntity> get copyWith =>
      __$$_MovieEntityCopyWithImpl<_$_MovieEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieEntityToJson(
      this,
    );
  }
}

abstract class _MovieEntity extends MovieEntity {
  const factory _MovieEntity(
      {required final int id,
      required final String title,
      final MetaVideosEntity? videos,
      final String? overview,
      @JsonKey(name: 'poster_path') final String? posterPath}) = _$_MovieEntity;
  const _MovieEntity._() : super._();

  factory _MovieEntity.fromJson(Map<String, dynamic> json) =
      _$_MovieEntity.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  MetaVideosEntity? get videos;
  @override
  String? get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_MovieEntityCopyWith<_$_MovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
