import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_loader.dart';
import 'product_list_item.dart';
import 'tab1_view_model.dart';
import '../../common/state_view.dart';
import '../../home/tab_page.dart';
import '../../model/ui_state.dart';
import '../../../data/model/photo.dart';

class Tab1Page extends TabPage {
  const Tab1Page({Key? key, required int index, required this.onClickItem}) : super(key: key, index: index);

  final void Function(BuildContext context, Object param) onClickItem;

  @override
  State<StatefulWidget> createState() => _Tab1State();
}

class _Tab1State extends TabState<Tab1Page> {
  late Tab1ViewModel _viewModel;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _viewModel = context.read<Tab1ViewModel>();
    _viewModel.init();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final state = context.watch<Tab1ViewModel>().uiState;
    final products = state is Success ? (state as Success<List<Photo>>).data : null;
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
          _viewModel.init();
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