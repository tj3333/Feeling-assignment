// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      youtubeUrl: json['youtube_url'] as String? ?? '',
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'youtube_url': instance.youtubeUrl,
    };
