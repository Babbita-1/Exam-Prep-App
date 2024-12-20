import 'package:flutter/material.dart';

class TestDetailPage extends StatelessWidget {
  final String testCategory;

  const TestDetailPage({super.key, required this.testCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(testCategory),
      ),
      body: Center(
        child: Text(
          'Welcome to the $testCategory test!',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
