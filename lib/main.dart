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
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Container(
            color: orientation == Orientation.portrait ? Colors.green : Colors.red,
            child: Center(
              child: Text(
                orientation == Orientation.portrait ? "VERTICAL" : "HORIZONTAL",
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
