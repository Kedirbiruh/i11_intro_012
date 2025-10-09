import 'package:flutter/material.dart';
import 'package:flutter_application_2/01_local/qudrant.dart';


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
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Qudrant(
                    value: _counter1,
                    onPlus: () {
                      setState(() {
                        _counter4++;
                      });
                    },
                    onMinus: () {
                      setState(() {
                        _counter4--;
                      });
                    },
                  ),
                  Qudrant(
                    value: _counter2,
                    onPlus: () {
                      setState(() {
                        _counter3++;
                      });
                    },
                    onMinus: () {
                      setState(() {
                        _counter3--;
                      });
                    }              ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Qudrant(
                    value: _counter3,
                    onPlus: () {
                      setState(() {
                        _counter2++;
                      });
                    },
                    onMinus: () {
                      setState(() {
                        _counter2--;
                      });
                    },
                  ),
                  Qudrant(
                    value: _counter4,
                    onPlus: () {
                      setState(() {
                        _counter1++;
                      });
                    },
                    onMinus: () {
                      setState(() {
                        _counter1--;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
