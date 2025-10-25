import 'package:flutter/material.dart';

class FabExample extends StatefulWidget {
  const FabExample({super.key});

  @override
  State<FabExample> createState() => _FabExampleState();
}

class _FabExampleState extends State<FabExample> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('FAB pressed! Count: $counter')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton Example'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          'Button pressed $counter times',
          style: const TextStyle(fontSize: 20, color: Colors.teal),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }
}
