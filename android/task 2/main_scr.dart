import 'package:flutter/material.dart';
import 'Bottom_NVB.dart';
void main() {
  runApp(const NewApp());

}
class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      bottomN(),
    );
  }

}