// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeling_percentage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeelingPercentage _$$_FeelingPercentageFromJson(Map<String, dynamic> json) =>
    _$_FeelingPercentage(
      happy: json['Happy'] as String? ?? '0',
      sad: json['Sad'] as String? ?? '0',
      energetic: json['Energetic'] as String? ?? '0',
      calm: json['Calm'] as String? ?? '0',
      angry: json['Angry'] as String? ?? '0',
      bored: json['Bored'] as String? ?? '0',
      love: json['Love'] as String? ?? '0',
    );

Map<String, dynamic> _$$_FeelingPercentageToJson(
        _$_FeelingPercentage instance) =>
    <String, dynamic>{
      'Happy': instance.happy,
      'Sad': instance.sad,
      'Energetic': instance.energetic,
      'Calm': instance.calm,
      'Angry': instance.angry,
      'Bored': instance.bored,
      'Love': instance.love,
    };
