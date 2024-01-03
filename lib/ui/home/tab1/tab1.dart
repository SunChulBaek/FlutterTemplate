import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

import 'product_list_item.dart';
import 'tab1_view_model.dart';
import '../../common/state_view.dart';
import '../../home/tab_page.dart';
import '../../model/ui_state.dart';
import '../../../data/model/photo.dart';

class Tab1Page extends TabPage {
  const Tab1Page({super.key, required super.index, required this.onClickItem});

  final void Function(BuildContext context, Object param) onClickItem;

  @override
  State<StatefulWidget> createState() => _Tab1State();
}

class _Tab1State extends TabState<Tab1Page> {
  late Tab1ViewModel _viewModel;
  final ScrollController _scrollController = ScrollController();
  final PagingController<int, Photo> _pagingController
    = PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();
    _viewModel = context.read<Tab1ViewModel>()..load();
    _pagingController.addPageRequestListener((pageKey) async {
      _viewModel.load();
    });
  }
  
  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final state = context.watch<Tab1ViewModel>().uiState;
    final products = state is Success ? (state as Success<Tab1Data>).data.photoList : null;
    final nextKey = state is Success ? (state as Success<Tab1Data>).data.nextKey : null;
    if (nextKey != null) {
      _pagingController.appendPage(products ?? List<Photo>.empty(), nextKey);
    } else {
      _pagingController.appendLastPage(products ?? List<Photo>.empty());
    }
    return StateView(
      state: state,
      child: RefreshIndicator(
        child: Scrollbar(
          thumbVisibility: true,
          controller: _scrollController,
          child: PagedListView<int, Photo>(
            pagingController: _pagingController,
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, item, index) => ProductListItem(
                photo: item,
                onClick: widget.onClickItem
              )
            )
          )
        ),
        onRefresh: () async {
          showSnackBar("리프레시!!!");
          _viewModel.load();
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