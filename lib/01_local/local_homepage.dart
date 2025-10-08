import 'package:flutter/material.dart';

class LocalHomepage extends StatefulWidget {
  const LocalHomepage({super.key});

  @override
  State<LocalHomepage> createState() => _LocalHomepageState();
}

class _LocalHomepageState extends State<LocalHomepage> {
  int _counter1 = 0;

  void _incrementCounter() {
    setState(() {
      _counter1++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Titel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('-')),
                      Text(
                        '$_counter1',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('+')),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('-')),
                      Text(
                        '$_counter1',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('+')),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('-')),
                      Text(
                        '$_counter1',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('+')),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('-')),
                      Text(
                        '$_counter1',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text('+')),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
