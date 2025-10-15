import 'package:flutter/material.dart';

class Quadrant extends StatelessWidget {
  const Quadrant({
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: onMinus,
              child: Icon(Icons.arrow_downward, color: Colors.white),
            ),
        
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.green),
                child: Center(
                  child: Text(
                    '$value',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
        
            ElevatedButton(
              onPressed: onPlus,
              child: Icon(Icons.arrow_upward, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
