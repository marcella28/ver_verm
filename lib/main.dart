import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrientationLayout(),
    );
  }
}

class OrientationLayout extends StatelessWidget {
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
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
