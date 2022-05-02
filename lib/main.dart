import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize = 40;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: TextField(
                textInputAction: TextInputAction.done,
                maxLines: null,
                style: TextStyle(fontSize: _fontSize),
              ),
            ),
            Slider(
              value: _fontSize,
              onChanged: (newSize) {
                setState(() => _fontSize = newSize);
              },
              min: 30.0,
              max: 200.0,
            )
          ],
        )),
      ),
    );
  }
}
