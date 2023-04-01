// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaEntity _$$_MetaEntityFromJson(Map<String, dynamic> json) =>
    _$_MetaEntity(
      page: json['page'] as int? ?? 1,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => MovieEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MovieEntity>[],
    );

Map<String, dynamic> _$$_MetaEntityToJson(_$_MetaEntity instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };
