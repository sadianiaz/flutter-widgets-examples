import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Example'),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text('Home')),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact Us'),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Swipe from left or tap menu icon to open Drawer',
          style: TextStyle(fontSize: 18, color: Colors.teal),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
