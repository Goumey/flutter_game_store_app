import 'package:flutter/material.dart';
import 'package:flutter_game_store_app/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Game Store',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
