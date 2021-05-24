import 'package:flutter/material.dart';

class Beauty_home extends StatefulWidget {
  String name;

  Beauty_home({this.name});

  @override
  _Beauty_homeState createState() => _Beauty_homeState();
}

class _Beauty_homeState extends State<Beauty_home> {
  bool select=true;

  //Beauty_Care Items
  final beautyCare=["IMAGES/shamboo.png","IMAGES/yardley.png","IMAGES/elariaorange.png","IMAGES/yardl.png",
    "IMAGES/Aristery.png","IMAGES/mztskincare.png"];

  final BeautyName=["Head & Shoulder","Yardley Powder ","Elaria Orange Soap","Yardley Losion","AristerySkin Care","Skin Cleanser"];

  final BeautyPrice=["148","249","20","199","122","565"];


  //Face_Care Items
  final faceCare=["IMAGES/himalaya.png","IMAGES/himalayan.png","IMAGES/nivea.png"];

  final faceName=["Face Cream","Face Wash","Nivea Cream",];

  final facePrice=["89","69","85"];


  //Creating Blank Array

  List<String> Img_Display=[];
  List<String>Name_Display=[];
  List<String>Price_Display=[];



/*final  abcd=[Icons.favorite_outline,Icons.favorite_outline,Icons.favorite_outline,
    Icons.favorite_outline,Icons.favorite_outline,Icons.favorite_outline];
final xyz=[Icons.favorite,Icons.favorite,Icons.favorite,Icons.favorite,Icons.favorite,Icons.favorite];*/


  @override
  Widget build(BuildContext context) {
    if (widget.name == "Bath and Oral Care") {
      /*for (int i = 0; i < beautyCare.length; i++) {
      Img_Display.add(beautyCare[i]);
      Name_Display.add(BeautyName[i]);
      Price_Display.add(BeautyPrice[i]);
    }*/
      Img_Display=List.from(beautyCare);
      Name_Display=List.from(BeautyName);
      Price_Display=List.from(BeautyPrice);
    }
    else if (widget.name == "Face Care") {
      /*for (int i = 0; i < beautyCare.length; i++) {
      Img_Display.add(faceCare[i]);
      Name_Display.add(faceName[i]);
      Price_Display.add(facePrice[i]);*/

      Img_Display=List.from(faceCare);
      Name_Display=List.from(faceName);
      Price_Display=List.from(facePrice);
    }


    if (select) {
      select = false;
    }
    else {
      select = true;
    }


    return Scaffold(
        appBar: AppBar(
          leading: IconButton(icon:Icon(Icons.keyboard_arrow_left, color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Beauty_care()));
            },),
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(color: Colors.grey[100],
                        child: Text(widget.name,
                          style: TextStyle(color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),)),
                    Text("Face Care",
                      style: TextStyle(color: Colors.grey, fontSize: 10),)
                  ],
                ),
              ],

            )
          ],),
        body:
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5.0,
              crossAxisCount: 2,
              // mainAxisSpacing: 5.0
            ),
            itemCount: Img_Display.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(color: Colors.lightBlue[100]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Img_Display[index], fit: BoxFit.fill, height: 90,
                            width: 100,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(Name_Display[index],
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),),
                              ),
                              Spacer(),


                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(Price_Display[index],
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey),),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12, top: 6,
                    child: Icon(Icons.add_box),),
                  Positioned(
                      top: 6, right: 12,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.redAccent[100],),
                        width: 30, height: 30,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 50, bottom: 20),
                            child: IconButton(icon: select
                                ? Icon(
                              Icons.favorite_border, color: Colors.white,)
                                : Icon(
                              Icons.favorite, color: Colors.red,),
                              onPressed: () {
                                setState(() {

                                });
                              },),
                          ),
                        ),)
                  )
                ],
              );
            })
    );
  }
}

