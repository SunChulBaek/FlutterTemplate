import 'package:flutter/material.dart';
import 'counter_view.dart';
import '../tab_page.dart';

class Tab3Page extends TabPage {
  const Tab3Page({super.key, required super.index});

  @override
  State<StatefulWidget> createState() => _Tab3State();
}

class _Tab3State extends TabState<Tab3Page> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const CounterView();
  }

  @override
  void onDoubleTap() {
    // TabPage.index에 해당하는 탭의 더블탭 이벤트를 받음
    showSnackBar("탭3 리셀렉~");
  }
}