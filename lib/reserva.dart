import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OrientationLayout(),
    );
  }
}
class OrientationLayout extends StatelessWidget {
  const OrientationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final orientation = MediaQuery.of(context).orientation;
          final isPortrait = orientation == Orientation.portrait;

          final textToShow = isPortrait ? "VERTICAL" : "HORIZONTAL";

          final fontSize = isPortrait
              ? constraints.maxWidth * 0.1
              : constraints.maxHeight * 0.1;

          return Container(
            color: isPortrait ? Colors.green : Colors.red,
            child: Center(
              child: Text(
                textToShow,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
