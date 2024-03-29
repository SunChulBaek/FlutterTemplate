import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../../../resources/resources.dart';
import '../../detail/webview.dart';
import '../../home/tab_page.dart';

class Tab2Page extends TabPage {
  const Tab2Page({super.key, required super.index});

  @override
  State<StatefulWidget> createState() => _Tab2State();
}

class _Tab2State extends TabState<Tab2Page> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          child: Lottie.asset(Lotties.snake_moving_confetti, fit: BoxFit.fill)
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Tab2"),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed(
                    WebViewScreen.routeName,
                    extra: WebViewParam(
                      title: "엔씨소프트",
                      url: "https://www.ncsoft.com"
                  ));
                },
                child: const Text('웹뷰 오픈')
              ),
            ],
          )
        )
      ]
    );
  }

  @override
  void onDoubleTap() {
    // TabPage.index에 해당하는 탭의 더블탭 이벤트를 받음
    showSnackBar("탭2 리셀렉~");
  }
}