// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeling_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeelingObject _$$_FeelingObjectFromJson(Map<String, dynamic> json) =>
    _$_FeelingObject(
      feelingPercentage: json['feeling_percentage'] == null
          ? null
          : FeelingPercentage.fromJson(
              json['feeling_percentage'] as Map<String, dynamic>),
      feelingList: (json['feeling_list'] as List<dynamic>?)
              ?.map((e) => Feeling.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      videoArr: (json['video_arr'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_FeelingObjectToJson(_$_FeelingObject instance) =>
    <String, dynamic>{
      'feeling_percentage': instance.feelingPercentage,
      'feeling_list': instance.feelingList,
      'video_arr': instance.videoArr,
    };
