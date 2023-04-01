// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_videos_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaVideosEntity _$$_MetaVideosEntityFromJson(Map<String, dynamic> json) =>
    _$_MetaVideosEntity(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => VideoEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <VideoEntity>[],
    );

Map<String, dynamic> _$$_MetaVideosEntityToJson(_$_MetaVideosEntity instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
