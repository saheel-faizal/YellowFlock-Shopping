import 'package:flutter/material.dart';
import 'package:yellow_app/Beauty_Care/Beauty.dart';


class Beauty_care  extends StatefulWidget {
  @override
  _Beauty_careState createState() => _Beauty_careState();
}

class _Beauty_careState extends State<Beauty_care> {



  final image=["images/bathcare.png","images/facecare.png"];
  final nameitem=["Bath and Oral Care","Face Care"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body:GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 5

            ),
            itemCount: nameitem.length,
            itemBuilder: (context,index) {
              return Padding(
                padding: const EdgeInsets.only(top: 15,left: 15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Beauty_home(name: nameitem[index],)));
                  },
                  child: Column(
                    children: [
                      Container(
                          decoration:BoxDecoration(boxShadow: [
                            BoxShadow(color: Colors.black,blurRadius: 4),],
                              color: Colors.white),
                          child: Image.asset(image[index],width: 150,height: 130,)),
                      SizedBox(height: 10),
                      Text(nameitem[index], style: TextStyle(fontSize: 20),)
                    ],
                  ),
                ),
              );
            })
    );


  }
}

