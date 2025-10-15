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
        child: Center(
          child: SizedBox(
            height: 50,
            width: 200,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: onMinus,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 80, 142, 170),
                    padding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(side: BorderSide()),
                  ),
                  child: Icon(Icons.arrow_downward, color: Colors.white),
                ),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(
                      child: Text(
                        '$value',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: onPlus,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 80, 142, 170),
                    padding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(side: BorderSide()),
                  ),
                  child: Icon(Icons.arrow_upward, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
