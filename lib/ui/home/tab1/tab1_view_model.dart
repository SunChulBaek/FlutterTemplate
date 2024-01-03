import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../model/ui_state.dart';
import '../../../data/model/photo.dart';
import '../../../data/repository.dart';
import '../../../util/timber.dart';

part 'tab1_view_model.freezed.dart';

@freezed
class Tab1Data with _$Tab1Data {
  factory Tab1Data({
    required List<Photo> photoList,
    required int? nextKey,
  }) = _Tab1Data;
}

@injectable
class Tab1ViewModel with ChangeNotifier {
  Tab1ViewModel({
    required this.repository,
  });

  UiState _uiState = Loading();

  UiState get uiState => _uiState;

  final Repository repository;

  void load() async {
    try {
      final photos = await repository.getPhotos();
      _uiState = Success(data: Tab1Data(
        photoList: photos,
        nextKey: null
      ));
      notifyListeners();
    } catch (e) {
      Timber.e(e);
      _uiState = Error();
      notifyListeners();
    }
  }
}