// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab1_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Tab1Data {
  List<Photo> get photoList => throw _privateConstructorUsedError;
  int? get nextKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Tab1DataCopyWith<Tab1Data> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Tab1DataCopyWith<$Res> {
  factory $Tab1DataCopyWith(Tab1Data value, $Res Function(Tab1Data) then) =
      _$Tab1DataCopyWithImpl<$Res, Tab1Data>;
  @useResult
  $Res call({List<Photo> photoList, int? nextKey});
}

/// @nodoc
class _$Tab1DataCopyWithImpl<$Res, $Val extends Tab1Data>
    implements $Tab1DataCopyWith<$Res> {
  _$Tab1DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoList = null,
    Object? nextKey = freezed,
  }) {
    return _then(_value.copyWith(
      photoList: null == photoList
          ? _value.photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      nextKey: freezed == nextKey
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Tab1DataImplCopyWith<$Res>
    implements $Tab1DataCopyWith<$Res> {
  factory _$$Tab1DataImplCopyWith(
          _$Tab1DataImpl value, $Res Function(_$Tab1DataImpl) then) =
      __$$Tab1DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Photo> photoList, int? nextKey});
}

/// @nodoc
class __$$Tab1DataImplCopyWithImpl<$Res>
    extends _$Tab1DataCopyWithImpl<$Res, _$Tab1DataImpl>
    implements _$$Tab1DataImplCopyWith<$Res> {
  __$$Tab1DataImplCopyWithImpl(
      _$Tab1DataImpl _value, $Res Function(_$Tab1DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoList = null,
    Object? nextKey = freezed,
  }) {
    return _then(_$Tab1DataImpl(
      photoList: null == photoList
          ? _value._photoList
          : photoList // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      nextKey: freezed == nextKey
          ? _value.nextKey
          : nextKey // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Tab1DataImpl implements _Tab1Data {
  _$Tab1DataImpl({required final List<Photo> photoList, required this.nextKey})
      : _photoList = photoList;

  final List<Photo> _photoList;
  @override
  List<Photo> get photoList {
    if (_photoList is EqualUnmodifiableListView) return _photoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photoList);
  }

  @override
  final int? nextKey;

  @override
  String toString() {
    return 'Tab1Data(photoList: $photoList, nextKey: $nextKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Tab1DataImpl &&
            const DeepCollectionEquality()
                .equals(other._photoList, _photoList) &&
            (identical(other.nextKey, nextKey) || other.nextKey == nextKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_photoList), nextKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Tab1DataImplCopyWith<_$Tab1DataImpl> get copyWith =>
      __$$Tab1DataImplCopyWithImpl<_$Tab1DataImpl>(this, _$identity);
}

abstract class _Tab1Data implements Tab1Data {
  factory _Tab1Data(
      {required final List<Photo> photoList,
      required final int? nextKey}) = _$Tab1DataImpl;

  @override
  List<Photo> get photoList;
  @override
  int? get nextKey;
  @override
  @JsonKey(ignore: true)
  _$$Tab1DataImplCopyWith<_$Tab1DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
