// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feeling _$$_FeelingFromJson(Map<String, dynamic> json) => _$_Feeling(
      userFeelingId: json['user_feeling_id'] as String? ?? '0',
      feelingId: json['feeling_id'] as String? ?? '0',
      feelingName: json['feeling_name'] as String? ?? '',
      submitTime: json['submit_time'] as String? ?? '',
    );

Map<String, dynamic> _$$_FeelingToJson(_$_Feeling instance) =>
    <String, dynamic>{
      'user_feeling_id': instance.userFeelingId,
      'feeling_id': instance.feelingId,
      'feeling_name': instance.feelingName,
      'submit_time': instance.submitTime,
    };
