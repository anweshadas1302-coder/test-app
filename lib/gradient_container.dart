import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});
  GradientContainer.purple({super.key})
    : color1 = const Color.fromARGB(255, 246, 154, 126),
      color2 = const Color.fromARGB(255, 243, 199, 103);
  final Color color1;
  final Color color2;

  var activeToyimage = 'assets/images/a1.png';
  void navigateToSecondScreen() {
    activeToyimage = 'assets/images/a2.png';
    print('Changing image...');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeToyimage, width: 200),
            TextButton(
              onPressed: () {
                navigateToSecondScreen();
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Go to Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
