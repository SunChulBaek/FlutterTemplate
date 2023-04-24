import 'package:bloc/bloc.dart';
import 'package:flutter_template/bloc/model/ui_state.dart';
import 'package:flutter_template/data/model/photo.dart';
import 'package:flutter_template/data/repository.dart';
import 'package:flutter_template/util/timber.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'photos_cubit.freezed.dart';

@freezed
@injectable
class PhotosData with _$PhotosData {
  factory PhotosData({
    required List<Photo> photos
  }) = _ProductsData;

  @factoryMethod
  factory PhotosData.from() => PhotosData(photos: List.of([]));
}

@injectable
class PhotosCubit extends Cubit<UiState> {
  PhotosCubit(this._repository, UiState state) : super(state);

  final Repository _repository;

  void init() async {
    try {
      final photos = await _repository.getPhotos();
      return emit(Success(
        data: PhotosData(
          photos: photos
        )
      ));
    } catch (e) {
      Timber.e(e);
      emit(Error());
    }
  }
}