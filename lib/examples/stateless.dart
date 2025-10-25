import 'package:flutter/material.dart';

class StatelessExample extends StatelessWidget {
  const StatelessExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateless Widget Example')),
      body: const Center(
        child: Text(
          'Hello, I am a Stateless Widget!',
          style: TextStyle(fontSize: 22, color: Colors.teal),
        ),
      ),
    );
  }
}
