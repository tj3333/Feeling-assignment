import 'package:freezed_annotation/freezed_annotation.dart';

part 'feeling.freezed.dart';
part 'feeling.g.dart';

@freezed
abstract class Feeling with _$Feeling {
  const factory Feeling({
    @Default('0') @JsonKey(name: 'user_feeling_id') String userFeelingId,
    @Default('0') @JsonKey(name: 'feeling_id') String feelingId,
    @Default('') @JsonKey(name: 'feeling_name') String feelingName,
    @Default('') @JsonKey(name: 'submit_time') String submitTime,
  }) = _Feeling;
  static const fromJsonFactory = _$FeelingFromJson;
  factory Feeling.fromJson(Map<String, dynamic> json) =>
      _$FeelingFromJson(json);
}