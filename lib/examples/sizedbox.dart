import 'package:flutter/material.dart';

class SizedBoxExample extends StatelessWidget {
  const SizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox Example'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'First Box',
              style: TextStyle(fontSize: 18, color: Colors.teal),
            ),
            const SizedBox(height: 20), // Adds vertical spacing
            Container(
              width: 150,
              height: 150,
              color: Colors.teal,
              child: const Center(
                child: Text(
                  'SizedBox Below',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 30, width: 50), // Adds extra space
            ElevatedButton(onPressed: () {}, child: const Text('Click Me')),
          ],
        ),
      ),
    );
  }
}
