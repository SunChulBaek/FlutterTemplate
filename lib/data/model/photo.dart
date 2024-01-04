import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  factory Photo({
    @JsonKey(name: 'albumId') required int albumId,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'thumbnailUrl') required String thumbnailUrl,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json)
    => _$PhotoFromJson(json);
}