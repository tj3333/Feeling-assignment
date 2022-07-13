import 'package:freezed_annotation/freezed_annotation.dart';

import 'feeling_object.dart';

part 'detail_feeling.freezed.dart';
part 'detail_feeling.g.dart';

@freezed
abstract class DetailFeeling with _$DetailFeeling {
  const factory DetailFeeling({
    @Default('200') @JsonKey(name: 'status') String status,
    FeelingObject? data,
  }) = _DetailFeeling;
  static const fromJsonFactory = _$DetailFeelingFromJson;
  factory DetailFeeling.fromJson(Map<String, dynamic> json) =>
      _$DetailFeelingFromJson(json);
}