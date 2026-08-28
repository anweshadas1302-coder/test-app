import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  @override
  Widget build(context) {
    return const Text(
      "Welcome to Home!",
      style: TextStyle(color: Colors.white, fontSize: 30),
    );
  }
}
