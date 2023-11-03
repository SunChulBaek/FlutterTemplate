import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../model/ui_state.dart';
import '../../../data/repository.dart';
import '../../../util/timber.dart';

@injectable
class Tab1ViewModel with ChangeNotifier {
  Tab1ViewModel({
    required this.repository,
  });

  UiState _uiState = Loading();

  UiState get uiState => _uiState;

  final Repository repository;

  void init() async {
    try {
      final photos = await repository.getPhotos();
      _uiState = Success(data: photos);
      notifyListeners();
    } catch (e) {
      Timber.e(e);
      _uiState = Error();
      notifyListeners();
    }
  }
}