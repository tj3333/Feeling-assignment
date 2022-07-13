import 'package:freezed_annotation/freezed_annotation.dart';

part 'feeling_percentage.freezed.dart';
part 'feeling_percentage.g.dart';

@freezed
abstract class FeelingPercentage with _$FeelingPercentage {
  const factory FeelingPercentage({
    @Default('0') @JsonKey(name: 'Happy') String happy,
    @Default('0') @JsonKey(name: 'Sad') String sad,
    @Default('0') @JsonKey(name: 'Energetic') String energetic,
    @Default('0') @JsonKey(name: 'Calm') String calm,
    @Default('0') @JsonKey(name: 'Angry') String angry,
    @Default('0') @JsonKey(name: 'Bored') String bored,
    @Default('0') @JsonKey(name: 'Love') String love,

  }) = _FeelingPercentage;
  static const fromJsonFactory = _$FeelingPercentageFromJson;
  factory FeelingPercentage.fromJson(Map<String, dynamic> json) =>
      _$FeelingPercentageFromJson(json);
}