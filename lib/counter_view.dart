// counter_view.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_view_model.dart';

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterViewModel = ref.watch(CounterViewModel.counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM with Riverpod'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: ${counterViewModel.counter}'),
            ElevatedButton(
              onPressed: counterViewModel.incrementCounter,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
