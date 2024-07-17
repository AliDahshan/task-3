import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

 List<String> images=[
   'assets/image1.jpg',
   'assets/image2.jpg',
   'assets/image3.jpg',
   'assets/image4.jpg',
 ];

  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GridView.builder(
          padding: const EdgeInsets.all(120.00),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
            itemCount: images.length,
            itemBuilder: (context, index){
            return Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(images[index]),
                  fit: BoxFit.fill,
                ),
              ),
            );
            },
        ),
      ),
    );
  }
}

