import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  final TextEditingController _nameController = TextEditingController();

  void _showInput() {
    final inputText = _nameController.text;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('You entered: $inputText')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Example'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _showInput, child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}
