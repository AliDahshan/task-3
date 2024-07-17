import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> images = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        title: const Text('New Screen'),
        centerTitle: true,

      ),
      body: SafeArea(
          child: GridView.builder (
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 50,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                  height: 500,
                  width: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  )
              );
            },
          )

      ),

    );
  }
}