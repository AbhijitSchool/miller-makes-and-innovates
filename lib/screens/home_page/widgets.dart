import 'package:flutter/material.dart';

class TextBoxTest extends StatefulWidget {
  const TextBoxTest({Key? key}) : super(key: key);

  @override
  _TextBoxTestState createState() => _TextBoxTestState();
}

class _TextBoxTestState extends State<TextBoxTest> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.message), labelText: 'Type a message!'),
    );
  }
}
