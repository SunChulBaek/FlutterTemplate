// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photos_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotosData {
  List<Photo> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotosDataCopyWith<PhotosData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosDataCopyWith<$Res> {
  factory $PhotosDataCopyWith(
          PhotosData value, $Res Function(PhotosData) then) =
      _$PhotosDataCopyWithImpl<$Res, PhotosData>;
  @useResult
  $Res call({List<Photo> photos});
}

/// @nodoc
class _$PhotosDataCopyWithImpl<$Res, $Val extends PhotosData>
    implements $PhotosDataCopyWith<$Res> {
  _$PhotosDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsDataCopyWith<$Res>
    implements $PhotosDataCopyWith<$Res> {
  factory _$$_ProductsDataCopyWith(
          _$_ProductsData value, $Res Function(_$_ProductsData) then) =
      __$$_ProductsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Photo> photos});
}

/// @nodoc
class __$$_ProductsDataCopyWithImpl<$Res>
    extends _$PhotosDataCopyWithImpl<$Res, _$_ProductsData>
    implements _$$_ProductsDataCopyWith<$Res> {
  __$$_ProductsDataCopyWithImpl(
      _$_ProductsData _value, $Res Function(_$_ProductsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$_ProductsData(
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$_ProductsData implements _ProductsData {
  _$_ProductsData({required final List<Photo> photos}) : _photos = photos;

  final List<Photo> _photos;
  @override
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'PhotosData(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsData &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsDataCopyWith<_$_ProductsData> get copyWith =>
      __$$_ProductsDataCopyWithImpl<_$_ProductsData>(this, _$identity);
}

abstract class _ProductsData implements PhotosData {
  factory _ProductsData({required final List<Photo> photos}) = _$_ProductsData;

  @override
  List<Photo> get photos;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsDataCopyWith<_$_ProductsData> get copyWith =>
      throw _privateConstructorUsedError;
}
