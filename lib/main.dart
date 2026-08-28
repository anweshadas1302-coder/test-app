import 'package:flutter/material.dart';

import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 120, 142, 91),
        body: GradientContainer(),
      ),
    ),
  );
}
