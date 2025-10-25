import 'package:flutter/material.dart';

// Import all example files from the examples folder
import 'examples/stateless.dart';
import 'examples/stateful.dart';
import 'examples/materialapp.dart';
import 'examples/scaffold.dart';
import 'examples/appbar.dart';
import 'examples/bottom_navigation.dart';
import 'examples/drawer.dart';
import 'examples/container.dart';
import 'examples/sizedbox.dart';
import 'examples/cliprrect.dart';
import 'examples/richtext.dart';
import 'examples/listview.dart';
import 'examples/gridview.dart';
import 'examples/textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets Examples',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> examples = [
      {'title': 'Stateless Widget', 'widget': const StatelessExample()},
      {'title': 'Stateful Widget', 'widget': const StatefulExample()},
      {'title': 'MaterialApp Widget', 'widget': const MaterialAppExample()},
      {'title': 'Scaffold Widget', 'widget': const ScaffoldExample()},
      {'title': 'AppBar Widget', 'widget': const AppBarExample()},
      {
        'title': 'Bottom Navigation Bar',
        'widget': const BottomNavigationExample(),
      },
      {'title': 'Drawer Widget', 'widget': const DrawerExample()},
      {'title': 'Container Widget', 'widget': const ContainerExample()},
      {'title': 'SizedBox Widget', 'widget': const SizedBoxExample()},
      {'title': 'ClipRRect Widget', 'widget': const ClipRRectExample()},
      {'title': 'RichText Widget', 'widget': RichTextExample()},
      {'title': 'ListView Widget', 'widget': const ListViewExample()},
      {'title': 'GridView Widget', 'widget': const GridViewExample()},
      {'title': 'TextField Widget', 'widget': const TextFieldExample()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets Examples'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: examples.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              title: Text(examples[index]['title']),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => examples[index]['widget'],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
