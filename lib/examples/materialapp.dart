import 'package:flutter/material.dart';

class MaterialAppExample extends StatelessWidget {
  const MaterialAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp Example',
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('MaterialApp Example')),
        body: const Center(
          child: Text(
            'This app uses MaterialApp as the root widget!',
            style: TextStyle(fontSize: 18, color: Colors.teal),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
