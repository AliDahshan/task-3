import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Bottom row with numbered boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildBox('1'),
                  const SizedBox(width: 30),
                  buildBox('1'),
                ],
              ),
              const SizedBox(height: 30),

              // Top rows with empty boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildBox(''),
                  const SizedBox(width: 30),
                  buildBox(''),
                  const SizedBox(width: 30),
                  buildBox(''),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildBox(''),
                  const SizedBox(width: 30),
                  buildBox(''),
                  const SizedBox(width: 30),
                  buildBox(''),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBox(String text) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
