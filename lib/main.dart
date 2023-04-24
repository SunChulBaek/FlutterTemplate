import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_template/injectable.dart';
import 'package:flutter_template/ui/detail/photo.dart';
import 'package:flutter_template/ui/detail/webview.dart';
import 'package:flutter_template/ui/home/home.dart';
import 'package:flutter_template/ui/splash/splash.dart';
import 'package:go_router/go_router.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'F템플릿',
      theme: ThemeData(
        fontFamily: 'Pretendard',
        primarySwatch: Colors.indigo,
        useMaterial3: true,
        splashFactory: InkRipple.splashFactory,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          }
        ),
      ),
      routerConfig: GoRouter(
        initialLocation: '/splash',
        routes: [
          GoRoute(
            path: '/splash',
            name: SplashScreen.routeName,
            builder: (context, state) => const SplashScreen(),
          ),
          GoRoute(
            path: '/home',
            name: HomeScreen.routeName,
            builder: (context, state) => HomeScreen(
              title: 'F템플릿',
              onClickProduct: (context, param) {
                context.pushNamed(PhotoScreen.routeName, extra: param as PhotoParam);
              },
            )
          ),
          GoRoute(
            path: '/product',
            name: PhotoScreen.routeName,
            builder: (context, state) => PhotoScreen(param: state.extra as PhotoParam),
          ),
          GoRoute(
            path: '/webview',
            name: WebViewScreen.routeName,
            builder: (context, state) => WebViewScreen(param: state.extra as WebViewParam),
          ),
        ]
      ),
    );
  }
}