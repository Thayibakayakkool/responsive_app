import 'package:flutter/material.dart';
import 'package:responsive_app/features/presentation/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

