// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Response2Impl<T> _$$Response2ImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$Response2Impl<T>(
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
      products: fromJsonT(json['products']),
    );

Map<String, dynamic> _$$Response2ImplToJson<T>(
  _$Response2Impl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
      'products': toJsonT(instance.products),
    };
