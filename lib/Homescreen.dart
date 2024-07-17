import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  int count2=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Hello lil Nigga',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text(
        'PRESS THE BUTTON! : $count',
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.red,
          fontSize: 30,
        ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PRESS THE BUTTON! : $count2',
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.red,
                fontSize: 30,
              ),
            ),
          ],
          ),
      const Text(
        'hehehehe',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.red,
          fontSize: 30,
        ),
      ),
       ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count=count+1000;
            count2=count2+count;
          });
        },
        child: const Icon(
          Icons.heart_broken,
        ),
      ),
    );
  }
}