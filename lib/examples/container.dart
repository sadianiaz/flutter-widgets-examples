import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Example'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(5, 5),
              ),
            ],
          ),
          alignment: Alignment.center,
          child: const Text(
            'Hello Container!',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
