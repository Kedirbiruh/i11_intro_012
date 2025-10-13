import 'package:flutter/material.dart';
import 'package:flutter_application_2/01_local/qudrant.dart';

class QuadrantRow extends StatelessWidget {
  const QuadrantRow({
    super.key,
    required this.onPlusLeft,
    required this.onMinusLeft,
    required this.valueLeft,
    required this.onPlusRight,
    required this.onMinusRight,
    required this.valueRight,
  });

  final void Function() onPlusLeft;
  final void Function() onMinusLeft;
  final int valueLeft;
  final void Function() onPlusRight;
  final void Function() onMinusRight;
  final int valueRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Quadrant(
                value: valueLeft,
                onPlus: onPlusLeft,
                onMinus: onMinusLeft,
              ),
              Quadrant(
                value: valueRight,
                onPlus: onPlusRight,
                onMinus: onMinusRight,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
