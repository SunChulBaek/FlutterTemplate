import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  static const resultPositive = "positive";
  static const resultNegative = "negative";

  const MyDialog({
    this.title,
    required this.content,
    this.positiveButton,
    this.negativeButton,
    super.key
  });

  final String? title;
  final Widget content;
  final String? positiveButton;
  final String? negativeButton;

  @override
  Widget build(BuildContext context) => AlertDialog(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    title: title != null ? Text(title!) : null,
    content: content,
    actions: [
      if (positiveButton != null)
        TextButton(
          child: Text(positiveButton!),
          onPressed: () {
            Navigator.pop(context, resultPositive);
          }
        ),
      if (negativeButton != null)
        TextButton(
          child: Text(negativeButton!),
          onPressed: () {
            Navigator.pop(context, resultNegative);
          }
        )
    ],
  );

  static void simpleShow({
    required BuildContext context,
    String? title,
    required String message,
    String? positiveButton,
    String? negativeButton,
    void Function()? onClickPositive,
    void Function()? onClickNegative,
  }) => showDialog<String>(
      context: context,
      builder: (context) => MyDialog(
        title: title,
        content: Text(message),
        positiveButton: positiveButton,
        negativeButton: negativeButton
      )
  ).then((value) {
    if (value == resultPositive) {
      onClickPositive?.call();
    } else if (value == resultNegative) {
      onClickNegative?.call();
    }
  });

  static void show({
    required BuildContext context,
    String? title,
    required Widget content,
    String? positiveButton,
    String? negativeButton,
    void Function()? onClickPositive,
    void Function()? onClickNegative,
  }) => showDialog<String>(
      context: context,
      builder: (context) => MyDialog(
        title: title,
        content: content,
        positiveButton: positiveButton,
        negativeButton: negativeButton
      )
  ).then((value) {
    if (value == resultPositive) {
      onClickPositive?.call();
    } else if (value == resultNegative) {
      onClickNegative?.call();
    }
  });
}