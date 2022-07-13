import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
abstract class Video with _$Video {
  const factory Video({
    @Default('') @JsonKey(name: 'title') String title,
    @Default('') @JsonKey(name: 'description') String description,
    @Default('') @JsonKey(name: 'youtube_url') String youtubeUrl,
  }) = _Video;
  static const fromJsonFactory = _$VideoFromJson;
  factory Video.fromJson(Map<String, dynamic> json) =>
      _$VideoFromJson(json);
}