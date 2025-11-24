import 'package:flutter/material.dart';
// import 'package:flutter_pertama/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const (title: "Belajar State"),
    );
  }
}
