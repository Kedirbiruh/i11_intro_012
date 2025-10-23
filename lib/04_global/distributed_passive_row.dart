import 'package:flutter/material.dart';
import 'package:flutter_application_2/03_distributed_with_passive_widgets/distributed_passive_quadrant.dart';

class GlobalPassiveRow extends StatelessWidget {
  const GlobalPassiveRow({
    super.key,
    required this.valueLeft,
    required this.onPlusLeft,
    required this.onMinusLeft,
    required this.valueRight,
    required this.onPlusRight,
    required this.onMinusRight,
  });

  final int valueLeft;
  final void Function() onPlusLeft;
  final void Function() onMinusLeft;
  final int valueRight;
  final void Function() onPlusRight;
  final void Function() onMinusRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DistributedPassiveQuadrant(
          value: valueLeft,
          onPlus: onPlusLeft,
          onMinus: onMinusLeft,
        ),
        DistributedPassiveQuadrant(
          value: valueRight,
          onPlus: onPlusRight,
          onMinus: onMinusRight,
        ),
      ],
    );
  }
}


