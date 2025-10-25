import 'package:flutter/material.dart';

class ClipRRectExample extends StatelessWidget {
  const ClipRRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRRect Example'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25), // Rounded corners
          child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            width: 250,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
