// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoEntity _$VideoEntityFromJson(Map<String, dynamic> json) {
  return _VideoEntity.fromJson(json);
}

/// @nodoc
mixin _$VideoEntity {
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoEntityCopyWith<VideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEntityCopyWith<$Res> {
  factory $VideoEntityCopyWith(
          VideoEntity value, $Res Function(VideoEntity) then) =
      _$VideoEntityCopyWithImpl<$Res, VideoEntity>;
  @useResult
  $Res call({String name, String key, String id});
}

/// @nodoc
class _$VideoEntityCopyWithImpl<$Res, $Val extends VideoEntity>
    implements $VideoEntityCopyWith<$Res> {
  _$VideoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? key = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoEntityCopyWith<$Res>
    implements $VideoEntityCopyWith<$Res> {
  factory _$$_VideoEntityCopyWith(
          _$_VideoEntity value, $Res Function(_$_VideoEntity) then) =
      __$$_VideoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String key, String id});
}

/// @nodoc
class __$$_VideoEntityCopyWithImpl<$Res>
    extends _$VideoEntityCopyWithImpl<$Res, _$_VideoEntity>
    implements _$$_VideoEntityCopyWith<$Res> {
  __$$_VideoEntityCopyWithImpl(
      _$_VideoEntity _value, $Res Function(_$_VideoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? key = null,
    Object? id = null,
  }) {
    return _then(_$_VideoEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoEntity implements _VideoEntity {
  const _$_VideoEntity(
      {required this.name, required this.key, required this.id});

  factory _$_VideoEntity.fromJson(Map<String, dynamic> json) =>
      _$$_VideoEntityFromJson(json);

  @override
  final String name;
  @override
  final String key;
  @override
  final String id;

  @override
  String toString() {
    return 'VideoEntity(name: $name, key: $key, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, key, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoEntityCopyWith<_$_VideoEntity> get copyWith =>
      __$$_VideoEntityCopyWithImpl<_$_VideoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoEntityToJson(
      this,
    );
  }
}

abstract class _VideoEntity implements VideoEntity {
  const factory _VideoEntity(
      {required final String name,
      required final String key,
      required final String id}) = _$_VideoEntity;

  factory _VideoEntity.fromJson(Map<String, dynamic> json) =
      _$_VideoEntity.fromJson;

  @override
  String get name;
  @override
  String get key;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_VideoEntityCopyWith<_$_VideoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
