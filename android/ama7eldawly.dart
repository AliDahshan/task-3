import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'hacker lil nigga',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const ListTile(
            leading: Image(image: AssetImage('assets/image1.jpg'),),
            title: Text('HELL YEAH!!'),
            trailing: Icon(Icons.delete),
          ),
        ),
      ),
    );
  }
}
