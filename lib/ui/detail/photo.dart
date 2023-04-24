import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PhotoParam {
  PhotoParam({
    required this.title,
    required this.url
  });

  final String title;
  final String url;
}

class PhotoScreen extends StatelessWidget {
  PhotoScreen({Key? key, required this.param}) : super(key: key);

  static const routeName = "/photo";

  final PhotoParam param;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(param.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: CachedNetworkImage(
              imageUrl: param.url,
            )
          ),
          Padding(
              padding: const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
              child: Text(param.title, style: const TextStyle(fontSize: 16))
          ),
        ]
      )
    );
  }
}