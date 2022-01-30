import 'package:flutter/material.dart';
import 'widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Recommendations'),
        actions: const [],
      ),
      body: const TextBoxTest(),
    );
  }
}
