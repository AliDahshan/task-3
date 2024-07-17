import 'package:flutter/material.dart';
import 'Image_Model.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        color: const Color(0xffA0153E),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.separated(
                  padding: const EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color(0xff5D0E41)),
                      clipBehavior: Clip.antiAlias ,
                      child: Image(image: AssetImage('${ImageModel.getListImagemodel[index].images}'),
                        fit: BoxFit.cover,),
                    );
                  }, separatorBuilder:  (context, index) => const SizedBox(width: 10,),
                  itemCount: ImageModel.getListImagemodel.length),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: ImageModel.getListImagemodel.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff00224D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    child:
                    ListTile(
                      title: Text('${ImageModel.getListImagemodel[index].name}',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      trailing: Text('${ImageModel.getListImagemodel[index].rate}',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      leading: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image(image: AssetImage('${ImageModel.getListImagemodel[index].images}',),
                            fit: BoxFit.cover,)),
                      subtitle: Text('${ImageModel.getListImagemodel[index].word}',style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),


                    ),
                  );
                },),
            ),
          ],
        ),
      )
      ),
    );
  }
}