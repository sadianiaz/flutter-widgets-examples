import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> fruits = [
      'Apple',
      'Banana',
      'Cherry',
      'Mango',
      'Orange',
      'Pineapple',
      'Strawberry',
      'Watermelon',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            elevation: 3,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Text(
                  fruits[index][0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(fruits[index]),
              subtitle: const Text('Tap to learn more'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You tapped on ${fruits[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
