// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Response2<T> _$Response2FromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _Response2<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$Response2<T> {
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'skip')
  int get skip => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  T get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Response2CopyWith<T, Response2<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Response2CopyWith<T, $Res> {
  factory $Response2CopyWith(
          Response2<T> value, $Res Function(Response2<T>) then) =
      _$Response2CopyWithImpl<T, $Res, Response2<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total,
      @JsonKey(name: 'skip') int skip,
      @JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'products') T products});
}

/// @nodoc
class _$Response2CopyWithImpl<T, $Res, $Val extends Response2<T>>
    implements $Response2CopyWith<T, $Res> {
  _$Response2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Response2ImplCopyWith<T, $Res>
    implements $Response2CopyWith<T, $Res> {
  factory _$$Response2ImplCopyWith(
          _$Response2Impl<T> value, $Res Function(_$Response2Impl<T>) then) =
      __$$Response2ImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int total,
      @JsonKey(name: 'skip') int skip,
      @JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'products') T products});
}

/// @nodoc
class __$$Response2ImplCopyWithImpl<T, $Res>
    extends _$Response2CopyWithImpl<T, $Res, _$Response2Impl<T>>
    implements _$$Response2ImplCopyWith<T, $Res> {
  __$$Response2ImplCopyWithImpl(
      _$Response2Impl<T> _value, $Res Function(_$Response2Impl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
    Object? products = freezed,
  }) {
    return _then(_$Response2Impl<T>(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$Response2Impl<T> implements _Response2<T> {
  _$Response2Impl(
      {@JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'skip') required this.skip,
      @JsonKey(name: 'limit') required this.limit,
      @JsonKey(name: 'products') required this.products});

  factory _$Response2Impl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$Response2ImplFromJson(json, fromJsonT);

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'skip')
  final int skip;
  @override
  @JsonKey(name: 'limit')
  final int limit;
  @override
  @JsonKey(name: 'products')
  final T products;

  @override
  String toString() {
    return 'Response2<$T>(total: $total, skip: $skip, limit: $limit, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Response2Impl<T> &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, skip, limit,
      const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Response2ImplCopyWith<T, _$Response2Impl<T>> get copyWith =>
      __$$Response2ImplCopyWithImpl<T, _$Response2Impl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$Response2ImplToJson<T>(this, toJsonT);
  }
}

abstract class _Response2<T> implements Response2<T> {
  factory _Response2(
          {@JsonKey(name: 'total') required final int total,
          @JsonKey(name: 'skip') required final int skip,
          @JsonKey(name: 'limit') required final int limit,
          @JsonKey(name: 'products') required final T products}) =
      _$Response2Impl<T>;

  factory _Response2.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$Response2Impl<T>.fromJson;

  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'skip')
  int get skip;
  @override
  @JsonKey(name: 'limit')
  int get limit;
  @override
  @JsonKey(name: 'products')
  T get products;
  @override
  @JsonKey(ignore: true)
  _$$Response2ImplCopyWith<T, _$Response2Impl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
