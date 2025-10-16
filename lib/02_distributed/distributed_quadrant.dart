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
        child: SizedBox(
          height: 50,
          width: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 80, 142, 170),
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(side: BorderSide()),
                ),
                onPressed: onMinus,
                child: const Icon(Icons.arrow_downward, color: Colors.white),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      '$value',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 80, 142, 170),
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(side: BorderSide()),
                ),
                onPressed: onPlus,
                child: const Icon(Icons.arrow_upward, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
