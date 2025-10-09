import 'package:flutter/material.dart';

class Qudrant extends StatelessWidget {
    const Qudrant({
    super.key,
    required this.value,
    required this.onPlus,
    required this.onMinus,
  });

    final int value;
    final void Function() onPlus;
    final void Function() onMinus;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: onMinus, child: const Text('-')),
            const SizedBox(width: 10),
              Text(
              '$value',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(width: 10),
            ElevatedButton(onPressed: onPlus, child: const Text('+')),
          ],
        ),
      ),
    );
  }
}
