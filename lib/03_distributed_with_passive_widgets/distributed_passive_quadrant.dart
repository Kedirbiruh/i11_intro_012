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
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
          color: Colors.green[200],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: onMinus, child: const Icon(Icons.remove)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text('$value', style: Theme.of(context).textTheme.headlineMedium),
            ),
            ElevatedButton(onPressed: onPlus, child: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
