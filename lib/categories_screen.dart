import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Your Category'),),
      body: GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 80,
      ),
      children: [
        Text(
          'Message 1',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'Message 2',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'Message 3',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'Message 4',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'Message 5',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'Message 6',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'Message 7',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'Message 8',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'Message 9',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'Message 10',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    );
  }
}
