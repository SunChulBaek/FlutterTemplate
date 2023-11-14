import 'package:flutter/material.dart';

typedef SDialogButtonCallback = void Function();

class SDialog extends StatelessWidget {
  static const resultPositive = "positive";
  static const resultNegative = "negative";

  const SDialog({
    this.title,
    required this.content,
    this.positiveButton,
    this.negativeButton,
    this.onClickPositive,
    this.onClickNegative,
    super.key
  });

  final String? title;
  final Widget content;
  final String? positiveButton;
  final String? negativeButton;
  final SDialogButtonCallback? onClickPositive;
  final SDialogButtonCallback? onClickNegative;

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

  void show(BuildContext context) => showDialog<String>(
    context: context,
    builder: (context) => this
  ).then((value) {
    if (value == resultPositive) {
      onClickPositive?.call();
    } else if (value == resultNegative) {
      onClickNegative?.call();
    }
  });
}