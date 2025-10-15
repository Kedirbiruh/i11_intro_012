import 'package:flutter/material.dart';
import 'package:flutter_application_2/02_distributed/quadrant.dart';

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
        backgroundColor: const Color.fromARGB(255, 39, 79, 97),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: const Color.fromARGB(255, 38, 124, 194),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 4, 10, 10),
                child: Text(
                  '${_counter1 + _counter2 + _counter3 + _counter4}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'Overengineered Counter',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 38, 124, 194),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 4, 10, 10),
                child: Text(
                  '${_counter1 + _counter2 + _counter3 + _counter4}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
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
                  Quadrant(
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
                  Quadrant(
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
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Quadrant(
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
                  Quadrant(
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

// class TextContainer extends StatelessWidget {
//   const TextContainer({
//     required this.containerColor,
//     required this.text,
//     super.key,
//   });
//   final Color containerColor;
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 60,
//       height: 60,
//       color: containerColor,
//       child: Center(child: Text(text)),
//     );
//   }
// }
