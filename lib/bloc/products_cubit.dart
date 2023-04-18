import 'package:bloc/bloc.dart';
import 'package:flutter_template/bloc/model/ui_state.dart';
import 'package:flutter_template/data/model/product.dart';
import 'package:flutter_template/data/repository.dart';
import 'package:flutter_template/util/timber.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'products_cubit.freezed.dart';

@freezed
@injectable
class ProductsData with _$ProductsData {
  factory ProductsData({
    required List<Product> products
  }) = _ProductsData;

  @factoryMethod
  factory ProductsData.from() => ProductsData(products: List.of([]));
}

@injectable
class ProductsCubit extends Cubit<UiState> {
  ProductsCubit(this._repository, UiState state) : super(state);

  final Repository _repository;

  void init([int skip = 0, int limit = 30]) async {
    try {
      final products = await _repository.getProducts(skip, limit);
      return emit(Success(
        data: ProductsData(
          products: products.products
        )
      ));
    } catch (e) {
      Timber.e(e);
      emit(Error());
    }
  }
}