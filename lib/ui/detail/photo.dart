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
      body: SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: param.url,
                  fit: BoxFit.fitWidth,
                  placeholder: (context, url) => AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.grey,
                      child: const Center(
                        child: CircularProgressIndicator()
                      ),
                    )
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                AppBar(
                  title: const Text("Photo"),
                  leading: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      context.pop();
                    },
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ]
            ),
            Padding(
                padding: const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 4),
                child: Text(param.title, style: const TextStyle(fontSize: 16))
            ),
          ]
        )
      )
    );
  }
}