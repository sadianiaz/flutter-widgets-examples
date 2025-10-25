import 'package:flutter/material.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({super.key});

  @override
  State<BottomNavigationExample> createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text('Home Page', style: TextStyle(fontSize: 22))),
    const Center(child: Text('Search Page', style: TextStyle(fontSize: 22))),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 22))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Example'),
        backgroundColor: Colors.teal,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
