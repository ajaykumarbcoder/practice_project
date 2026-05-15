import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/widgets/counter_text.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/widgets/decrement_button.dart';
import 'package:practice_project/01_basic_counter/provider_architecture/widgets/increment_button.dart';
import 'package:practice_project/01_basic_counter/riverpod_architecture/provider/counter_provider.dart';

class RiverpodCounterScreen extends ConsumerWidget {
  const RiverpodCounterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Riverpod Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CounterText(count: counter),
              IncrementButton(
                onPressed: () => ref.read(counterProvider.notifier).increment(),
              ),
              DecrementButton(
                onPressed: () => ref.read(counterProvider.notifier).decrement(),
              ),
            ],
          ),
        ));
  }
}
