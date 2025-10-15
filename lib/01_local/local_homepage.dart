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
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(color: Colors.white),
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
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  80,
                                  142,
                                  170,
                                ),
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _counter4--;
                                });
                              },
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                              ),
                            ),

                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(color: Colors.green),
                                child: Center(
                                  child: Text(
                                    '$_counter1',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleLarge,
                                  ),
                                ),
                              ),
                            ),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  80,
                                  142,
                                  170,
                                ),
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _counter4++;
                                });
                              },
                              child: Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  80,
                                  142,
                                  170,
                                ),
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _counter3--;
                                });
                              },
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                              ),
                            ),

                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(color: Colors.green),
                                child: Center(
                                  child: Text(
                                    '$_counter2',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleLarge,
                                  ),
                                ),
                              ),
                            ),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  80,
                                  142,
                                  170,
                                ),
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _counter3++;
                                });
                              },
                              child: Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  80,
                                  142,
                                  170,
                                ),
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _counter2--;
                                });
                              },
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                              ),
                            ),

                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(color: Colors.green),
                                child: Center(
                                  child: Text(
                                    '$_counter3',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleLarge,
                                  ),
                                ),
                              ),
                            ),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  80,
                                  142,
                                  170,
                                ),
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _counter2++;
                                });
                              },
                              child: Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  80,
                                  142,
                                  170,
                                ),
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _counter1--;
                                });
                              },
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                              ),
                            ),

                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(color: Colors.green),
                                child: Center(
                                  child: Text(
                                    '$_counter4',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleLarge,
                                  ),
                                ),
                              ),
                            ),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  80,
                                  142,
                                  170,
                                ),
                                padding: const EdgeInsets.all(16),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _counter1++;
                                });
                              },
                              child: Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
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
