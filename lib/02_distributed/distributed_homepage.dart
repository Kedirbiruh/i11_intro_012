import 'package:flutter/material.dart';
import 'package:flutter_application_2/02_distributed/distributed_quadrant.dart';

class DistributedHomepage extends StatefulWidget {
  const DistributedHomepage({super.key});

  @override
  State<DistributedHomepage> createState() => _DistributedHomepageState();
}

class _DistributedHomepageState extends State<DistributedHomepage> {
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;

  int _getValue(int quadrant) {
    switch (quadrant) {
      case 1:
        return _counter1;
      case 2:
        return _counter2;
      case 3:
        return _counter3;
      case 4:
        return _counter4;
      default:
        return 0;
    }
  }

  void _updateCounter(int quadrant, bool increase) {
    setState(() {
      switch (quadrant) {
        case 1:
          increase ? _counter4++ : _counter4--;
          break;
        case 2:
          increase ? _counter3++ : _counter3--;
          break;
        case 3:
          increase ? _counter2++ : _counter2--;
          break;
        case 4:
          increase ? _counter1++ : _counter1--;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final total = _counter1 + _counter2 + _counter3 + _counter4;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 79, 97),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildCountBox(total),
            const Text(
              'Distributed Counter',
              style: TextStyle(color: Colors.white),
            ),
            _buildCountBox(total),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Quadrant(
                  value: _getValue(1),
                  onPlus: () => _updateCounter(1, true),
                  onMinus: () => _updateCounter(1, false),
                ),
                Quadrant(
                  value: _getValue(2),
                  onPlus: () => _updateCounter(2, true),
                  onMinus: () => _updateCounter(2, false),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Quadrant(
                  value: _getValue(3),
                  onPlus: () => _updateCounter(3, true),
                  onMinus: () => _updateCounter(3, false),
                ),
                Quadrant(
                  value: _getValue(4),
                  onPlus: () => _updateCounter(4, true),
                  onMinus: () => _updateCounter(4, false),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCountBox(int total) {
    return Container(
      color: const Color.fromARGB(255, 38, 124, 194),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Text(
        '$total',
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
