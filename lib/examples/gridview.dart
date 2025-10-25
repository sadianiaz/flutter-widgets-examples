import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> colors = [
      'Red',
      'Green',
      'Blue',
      'Orange',
      'Purple',
      'Teal',
      'Pink',
      'Yellow',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.teal[100 * ((index % 8) + 1)],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  colors[index],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
