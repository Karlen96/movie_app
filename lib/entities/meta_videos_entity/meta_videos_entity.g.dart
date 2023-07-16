// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_videos_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaVideosEntity _$$_MetaVideosEntityFromJson(Map json) =>
    _$_MetaVideosEntity(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  VideoEntity.fromJson(Map<String, Object?>.from(e as Map)))
              .toList() ??
          const <VideoEntity>[],
    );

Map<String, dynamic> _$$_MetaVideosEntityToJson(_$_MetaVideosEntity instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
