import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Widget Example'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Menu button pressed')),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Search icon pressed')),
              );
            },
          ),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: const Center(
        child: Text(
          'This screen demonstrates AppBar usage!',
          style: TextStyle(fontSize: 18, color: Colors.teal),
        ),
      ),
    );
  }
}
