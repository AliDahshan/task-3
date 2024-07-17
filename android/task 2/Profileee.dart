import "package:flutter/material.dart";

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        children: [
          const Positioned(
            left: -120 ,
            top: -120,
            child: CircleAvatar(
              backgroundColor: Color(0xff00224D),
              radius: 120,),
          ),
          const Positioned(
            right: -120 ,
            bottom: -120,
            child: CircleAvatar(
              backgroundColor: Color(0xff00224D),
              radius: 120,),
          ),
          const Positioned(
            bottom: -120 ,
            top: -120,
            left: -120,
            right: -120,
            child: CircleAvatar(
              backgroundColor: Color(0xff5D0E41),
              radius: 300,),
          ),
          const Positioned(
            left: -120 ,
            top: -120,
            child: CircleAvatar(
              backgroundColor: Color(0xff00224D),
              radius: 120,),
          ),
          const Positioned(
            right: -250 ,
            top: -120,
            child: CircleAvatar(
              backgroundColor: Color(0xffA0153E),
              radius: 300,),
          ),
          const Positioned(
            left: -250 ,
            bottom: -120,
            child: CircleAvatar(
              backgroundColor: Color(0xffFF204E),
              radius: 300,),
          ),
          Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color(0xff5D0E41),),
                clipBehavior: Clip.antiAlias,
                height: 250,
                width: double.infinity,
                child: const Image(image: AssetImage('assets/image4.jpg'),fit: BoxFit.cover,),
              ),
            ],
          ),
          const Positioned(top: 275,left: 40,child: Icon(Icons.favorite,color: Colors.red,size: 50,),)
        ],
      )
      ),
    );
  }
}