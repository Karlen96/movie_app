// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_genres_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaGenresEntity _$$_MetaGenresEntityFromJson(Map<String, dynamic> json) =>
    _$_MetaGenresEntity(
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GenreEntity>[],
    );

Map<String, dynamic> _$$_MetaGenresEntityToJson(_$_MetaGenresEntity instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
