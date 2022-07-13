// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_feeling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailFeeling _$$_DetailFeelingFromJson(Map<String, dynamic> json) =>
    _$_DetailFeeling(
      status: json['status'] as String? ?? '200',
      data: json['data'] == null
          ? null
          : FeelingObject.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailFeelingToJson(_$_DetailFeeling instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
