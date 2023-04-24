import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/bloc/model/ui_state.dart';
import 'package:flutter_template/injectable.dart';
import 'package:flutter_template/ui/common/state_view.dart';
import 'package:flutter_template/ui/home/tab_page.dart';
import 'package:flutter_template/bloc/photos_cubit.dart';
import 'package:flutter_template/ui/home/tab1/bottom_loader.dart';
import 'package:flutter_template/ui/home/tab1/product_list_item.dart';

class Tab1Page extends TabPage {
  const Tab1Page({Key? key, required int index, required this.onClickItem}) : super(key: key, index: index);

  final void Function(BuildContext context, Object param) onClickItem;

  @override
  State<StatefulWidget> createState() => _Tab1State();
}

class _Tab1State extends TabState<Tab1Page> {
  final PhotosCubit _photosCubit = getIt<PhotosCubit>()..init();
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create: (_) => _photosCubit,
      child: BlocBuilder<PhotosCubit, UiState>(
        builder: (context, state) {
          final products = state is Success ? (state as Success<PhotosData>).data.photos : null;
          return StateView(
            state: state,
            child: (products?.isEmpty ?? true)
              ? const Center(child: Text('No products'))
              : RefreshIndicator(
              child: Scrollbar(
                thumbVisibility: true,
                controller: _scrollController,
                child: ListView.builder(
                  controller: _scrollController,
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  itemBuilder: (BuildContext context, int index) {
                    return index >= products.length
                      ? const BottomLoader()
                      : ProductListItem(
                      photo: products[index],
                      onClick: widget.onClickItem
                    );
                  },
                  itemCount: products!.length,
                )
              ),
              onRefresh: () async {
                showSnackBar("리프레시!!!");
                _photosCubit.init();
              }
            )
          );
        }
      )
    );
  }

  @override
  void onDoubleTap() {
    // TabPage.index에 해당하는 탭의 더블탭 이벤트를 받음
    showSnackBar("탭1 리셀렉~");
    _scrollController.animateTo(
        _scrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn
    );
  }
}