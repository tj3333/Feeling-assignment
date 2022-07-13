import 'package:freezed_annotation/freezed_annotation.dart';

part 'feeling_request.freezed.dart';
part 'feeling_request.g.dart';

@freezed
abstract class FeelingRequest with _$FeelingRequest {
  const factory FeelingRequest({
    @Default('') @JsonKey(name: 'user_id') String userId,
    @Default('') @JsonKey(name: 'feeling_date') String feelingDate,
  }) = _FeelingRequest;
  static const fromJsonFactory = _$FeelingRequestFromJson;
  factory FeelingRequest.fromJson(Map<String, dynamic> json) =>
      _$FeelingRequestFromJson(json);
}