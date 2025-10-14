import 'package:flutter/material.dart';

class LocalHomepage extends StatefulWidget {
  const LocalHomepage({super.key});

  @override
  State<LocalHomepage> createState() => _LocalHomepageState();
}

class _LocalHomepageState extends State<LocalHomepage> {
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Overengineered Counter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text('${_counter1 + _counter2 + _counter3 + _counter4}'),
              ),
            ),

            Container(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${_counter1 + _counter2 + _counter3 + _counter4}'),
              ),
            ),
          ],
        ),
      ),

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter4--;
                            });
                          },
                          child: Text('-'),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '$_counter1',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter4++;
                            });
                          },
                          child: Text('+'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter3--;
                            });
                          },
                          child: Text('-'),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '$_counter2',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter3++;
                            });
                          },
                          child: Text('+'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter2--;
                            });
                          },
                          child: Text('-'),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '$_counter3',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter2++;
                            });
                          },
                          child: Text('+'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter1--;
                            });
                          },
                          child: Text('-'),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '$_counter4',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter1++;
                            });
                          },
                          child: Text('+'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
