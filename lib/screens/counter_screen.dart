import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text('Clicks Counter', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.exposure_plus_1_outlined),
              onPressed: () => setState(() => counter++)),
          FloatingActionButton(
              child: const Icon(Icons.restart_alt_outlined),
              onPressed: () => setState(() => counter = 0)),
          // const SizedBox(
          //   width: 20,
          // ),
          FloatingActionButton(
              child: const Icon(Icons.exposure_minus_1_outlined),
              onPressed: () => setState(() => counter--)),
        ],
      ),
    );
  }
}
