// import 'package:flutter/material.dart';

// class DistributedPassiveHomepage extends StatelessWidget {
//   const DistributedPassiveHomepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_2/02_distributed/quadrant.dart';
import 'package:flutter_application_2/03_distributed_with_passive_widgets/distributed_passive_row.dart';

class DistributedPassiveHomepage extends StatefulWidget {
  const DistributedPassiveHomepage({super.key});

  @override
  State<DistributedPassiveHomepage> createState() =>
      _DistributedPassiveHomepageState();
}

class _DistributedPassiveHomepageState
    extends State<DistributedPassiveHomepage> {
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;

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
