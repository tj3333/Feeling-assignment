// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeling_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeelingRequest _$$_FeelingRequestFromJson(Map<String, dynamic> json) =>
    _$_FeelingRequest(
      userId: json['user_id'] as String? ?? '',
      feelingDate: json['feeling_date'] as String? ?? '',
    );

Map<String, dynamic> _$$_FeelingRequestToJson(_$_FeelingRequest instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'feeling_date': instance.feelingDate,
    };
