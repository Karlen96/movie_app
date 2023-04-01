// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieEntity _$$_MovieEntityFromJson(Map<String, dynamic> json) =>
    _$_MovieEntity(
      id: json['id'] as int,
      title: json['title'] as String,
      videos: json['videos'] == null
          ? null
          : MetaVideosEntity.fromJson(json['videos'] as Map<String, dynamic>),
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$_MovieEntityToJson(_$_MovieEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'videos': instance.videos,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
    };
