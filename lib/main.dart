import 'package:flutter/material.dart';
import 'theme/style.dart';
import 'screens/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Recommendations',
      theme: theme,
      home: const HomePage(),
    );
  }
}
