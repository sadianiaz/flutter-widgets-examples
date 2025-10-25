import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Widget Example'),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Text(
          'This is the body of the Scaffold!',
          style: TextStyle(fontSize: 18, color: Colors.teal),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Floating Action Button Pressed')),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Text('Bottom Navigation Bar', textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
