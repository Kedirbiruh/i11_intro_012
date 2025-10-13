import 'package:flutter/material.dart';
import 'package:flutter_application_2/01_local/qudrant.dart';
import 'package:flutter_application_2/02_distributed/quadrant_row.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            Text((_counter1 + _counter2 + _counter3 + _counter4).toString()),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: QuadrantRow(
                valueLeft: _counter1,
                onPlusLeft: () {
                  setState(() {
                    _counter4++;
                  });
                },
                onMinusLeft: () {
                  setState(() {
                    _counter4--;
                  });
                },
                valueRight: _counter2,
                onPlusRight: () {
                  setState(() {
                    _counter3++;
                  });
                },
                onMinusRight: () {
                  setState(() {
                    _counter3--;
                  });
                },
              ),
            ),
            Expanded(
              child: QuadrantRow(
                valueLeft: _counter3,
                onPlusLeft: () {
                  setState(() {
                    _counter2++;
                  });
                },
                onMinusLeft: () {
                  setState(() {
                    _counter2--;
                  });
                },
                valueRight: _counter4,
                onPlusRight: () {
                  setState(() {
                    _counter1++;
                  });
                },
                onMinusRight: () {
                  setState(() {
                    _counter1--;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
