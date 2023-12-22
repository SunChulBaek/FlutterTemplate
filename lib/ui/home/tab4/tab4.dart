import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_template/ui/common/s_dialog.dart';
import '../../home/tab_page.dart';
import '../../../resources/resources.dart';

class Tab4Page extends TabPage {
  const Tab4Page({super.key, required super.index});

  @override
  State<StatefulWidget> createState() => _Tab4State();
}

class _Tab4State extends TabState<Tab4Page> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Tab4"),
          ElevatedButton(
            onPressed: () {
              // 스낵바 호출
              showSnackBar('탭4!!!');
            },
            child: const Text('Show SnackBar')
          ),
          ElevatedButton(
            onPressed: () {
              const SDialog(
                content: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
              ).show(context);
            },
            child: const Text('SDialog (content)')
          ),
          ElevatedButton(
            onPressed: () {
              const SDialog(
                title: "Lorem Ipsum",
                content: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                positiveButton: "확인",
                negativeButton: "취소",
              ).show(context);
            },
            child: const Text('SDialog (title + content + buttons)'),
          ),
          const Text('이것은 svg 이미지'),
          SvgPicture.asset(
            Images.kuba_information_icons_set_1,
            width: 100,
            height: 100
          )
        ],
      )
    );
  }

  @override
  void onDoubleTap() {
    // TabPage.index에 해당하는 탭의 더블탭 이벤트를 받음
    showSnackBar("탭4 리셀렉~");
  }
}