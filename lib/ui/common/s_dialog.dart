import 'package:flutter/material.dart';

typedef SDialogButtonCallback<T> = void Function(T?);

class _SDialogData<T> {
  _SDialogData({
    required this.result,
    this.data,
  });
  final String result;
  final T? data;
}

class SDialog<T> extends StatefulWidget {
  static const _resultPositive = "positive";
  static const _resultNegative = "negative";
  static const activeColorForChoice = Colors.cyan;

  const SDialog({
    this.title,
    this.content,
    this.choices,
    this.init,
    this.activeColor,
    this.inactiveColor,
    this.positiveButton,
    this.negativeButton,
    this.onClickPositive,
    this.onClickNegative,
    super.key
  });

  final String? title;
  final Widget? content;

  // choice
  final List<String>? choices;
  final int? init;
  final Color? activeColor;
  final Color? inactiveColor;

  final String? positiveButton;
  final String? negativeButton;
  final SDialogButtonCallback<T>? onClickPositive;
  final SDialogButtonCallback<T>? onClickNegative;

  @override
  State<StatefulWidget> createState() => _SDialogState();

  void show(BuildContext context) => showDialog<_SDialogData<T>>(
    context: context,
    builder: (context) => this
  ).then((value) {
    if (value?.result == _resultPositive) {
      onClickPositive?.call(value?.data);
    } else if (value?.result == _resultNegative) {
      onClickNegative?.call(value?.data);
    }
  });
}

class _SDialogState extends State<SDialog> {
  int? _index;

  @override
  void initState() {
    super.initState();
    setState(() {
      _index = widget.init;
    });
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    title: widget.title != null ? Text(widget.title!) : null,
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.content != null)
          widget.content!,
        for (int i = 0; i < (widget.choices?.length ?? 0); i++)
          TextButton(
            onPressed: () {
              setState(() {
                _index = i;
              });
            },
            child: Text(
              widget.choices![i],
              style: TextStyle(
                color: i == (_index ?? 0)
                    ? (widget.activeColor ?? SDialog.activeColorForChoice)
                    : widget.inactiveColor
              )
            )
          )
      ]
    ),
    actions: [
      if (widget.positiveButton != null)
        TextButton(
          child: Text(widget.positiveButton!),
          onPressed: () {
            Navigator.pop(
              context,
              _SDialogData(
                result: SDialog._resultPositive,
                data: _index
              )
            );
          }
        ),
      if (widget.negativeButton != null)
        TextButton(
          child: Text(widget.negativeButton!),
          onPressed: () {
            Navigator.pop(
              context,
              _SDialogData(
                result: SDialog._resultNegative,
                data: _index
              )
            );
          }
        )
    ],
  );
}