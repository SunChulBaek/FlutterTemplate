import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_view_model.dart';

class CounterView extends StatefulWidget {
  const CounterView({
    super.key
  });

  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<CounterView> {
  late CounterViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = context.read<CounterViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CounterViewModel>().value;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Center(
        child: Text('$state', style: textTheme.headline2)
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'counterView_increment_floatingActionButton',
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => _viewModel.increment()
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'counterView_decrement_floatingActionButton',
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => _viewModel.decrement()
          )
        ],
      ),
    );
  }
}