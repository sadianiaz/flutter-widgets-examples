import 'package:flutter/material.dart';

class StatefulExample extends StatefulWidget {
  const StatefulExample({super.key});

  @override
  State<StatefulExample> createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Widget Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Button pressed this many times:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
