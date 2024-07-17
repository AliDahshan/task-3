import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'Profileee.dart';
import 'Settings.dart';

class bottomN extends StatefulWidget {
  const bottomN({super.key});

  @override
  State<StatefulWidget> createState() => _bottomNState();
}
int CurrentIndex = 0;
List<Widget> screen = [
  HomeScreen(),
  const Profile(),
  const Settings(),
];
class _bottomNState extends State<bottomN>    {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: CurrentIndex,
          onTap: (value){
            CurrentIndex = value;
            setState(() {

            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }

}