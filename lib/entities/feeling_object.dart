import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tejas_s_application1/entities/feeling.dart';
import 'package:tejas_s_application1/entities/feeling_percentage.dart';
import 'package:tejas_s_application1/entities/video.dart';

part 'feeling_object.freezed.dart';
part 'feeling_object.g.dart';

@freezed
abstract class FeelingObject with _$FeelingObject {
  const factory FeelingObject({
    @JsonKey(name: 'feeling_percentage') FeelingPercentage? feelingPercentage,
    @Default([]) @JsonKey(name: 'feeling_list') List<Feeling> feelingList,
    @Default([]) @JsonKey(name: 'video_arr') List<Video> videoArr,
  }) = _FeelingObject;
  static const fromJsonFactory = _$FeelingObjectFromJson;
  factory FeelingObject.fromJson(Map<String, dynamic> json) =>
      _$FeelingObjectFromJson(json);
}