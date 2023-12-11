import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_model.dart';

class CounterViewModel {
  // プロバイダーを作成
  static final counterProvider =
      ChangeNotifierProvider<CounterModel>((ref) => CounterModel());

  // カウンターをインクリメントするメソッド
  void incrementCounter(WidgetRef ref) {
    ref.read(counterProvider).incrementCounter();
  }
}
