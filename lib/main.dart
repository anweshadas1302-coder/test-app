import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 201, 158, 189),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 120, 142, 91),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 176, 112, 93),
                Color.fromARGB(255, 143, 101, 101),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(child: Text("Welcome to Home!")),
        ),
      ),
    );
  }
}
