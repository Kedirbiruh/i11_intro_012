import 'package:flutter/material.dart';

class DistributedQuadrant extends StatelessWidget {
  const DistributedQuadrant({
    super.key,
    required this.value,
    required this.onPlus,
    required this.onMinus,
  });

  final int value;
  final VoidCallback onPlus;
  final VoidCallback onMinus;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: onMinus, child: Text('-')),
          const SizedBox(width: 10),
          Text('$value', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(width: 10),
          ElevatedButton(onPressed: onPlus, child: Text('+')),
        ],
      ),
    );
  }
}
