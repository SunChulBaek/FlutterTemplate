import 'package:freezed_annotation/freezed_annotation.dart';

part 'response2.freezed.dart';
part 'response2.g.dart';

@Freezed(genericArgumentFactories: true)
class Response2<T> with _$Response2 {
  factory Response2({
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'skip') required int skip,
    @JsonKey(name: 'limit') required int limit,
    @JsonKey(name: 'products') required T products
  }) = _Response2;

  factory Response2.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT
  ) => _$Response2FromJson(json, fromJsonT);
}