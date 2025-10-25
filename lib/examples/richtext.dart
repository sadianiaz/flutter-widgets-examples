import 'package:flutter/material.dart';

class RichTextExample extends StatelessWidget {
  const RichTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RichText Example'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Welcome ',
            style: const TextStyle(fontSize: 22, color: Colors.black),
            children: const [
              TextSpan(
                text: 'to ',
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: 'Flutter ',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Widgets!',
                style: TextStyle(
                  color: Colors.purple,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
