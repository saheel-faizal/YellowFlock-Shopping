import 'dart:ui';

import 'package:flutter/material.dart';
class details extends StatefulWidget {
  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigo[900],
        elevation: 0.0001,

      ),
      body: ListView(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: 230,
                    color: Colors.white,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 230),
                    child: Container(
                      color: Colors.indigo[900],
                      height: 400,
                      width: 130,
                    ),

                  ),
                  Positioned(
                      left: 70,
                      top: 110,
                      child: Image.asset("IMAGES/shamboo.png",height: 300,)
                  ),
                ],
              ),



            ],
          ),
          SizedBox(height: 50,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text("Shampoo",style: TextStyle(fontSize: 18,color: Colors.grey),),
                    SizedBox(width: 180,),
                    Text("\u{20B9}${148}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 10),
                child: Text("Instock",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.indigo[900]),),

              ),
              SizedBox(height: 2,),
              Divider(
                thickness: 2,
                color: Colors.grey[300],
                indent: 30,
                endIndent: 37,

              ),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 18),
                child: Container(
                  height: 85,
                  width:MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey[300])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Check Delivery",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black),),
                      ),
                      SizedBox(height: 2,),
                      Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(

                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(hintText: "Enter Pincode"),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8,left: 18,right: 8),
                              child: Container(
                                height: 40,
                                width: 90,
                                child: RaisedButton(

                                    color: Colors.indigo[900],
                                    child: Text("proceed",style: TextStyle
                                      (color: Colors.white),),

                                    onPressed: (){

                                    }),
                              ),
                            ),

                          ]
                      )
                    ],
                  ),
                ),

              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 18,right: 18),
                child: Container(
                  decoration:BoxDecoration(color:Colors.white,boxShadow:[BoxShadow(color: Colors.black,blurRadius: 2)]),

                  height: 300,

                  width: MediaQuery.of(context).size.width,
                  child: Text("Your  hair is unique and that means that you need unique solutions for keeping your hair strong, "
                      "and your scalp healthy and dandruff-free. "
                      " Our products are specially formulated to fight the symptoms and cause of dandruff, for all hair types. "
                      "Head & Shoulders dandruff-fighting solutions include shampoos, conditioners and 2in1 solutions which give you complete "
                      "dandruff protection",style: TextStyle(fontSize: 15),),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text("Recommemnded Product",style: TextStyle(color: Colors.grey,fontSize: 15),),

          ),SizedBox(height: 10,),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Image.asset("IMAGES/shamboo.png",height: 100,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("Shampoo"),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Text("\u{20B9}${148} "),
                          Text("\u{20B9}${160}",style: TextStyle(decoration: TextDecoration.lineThrough),)
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset("IMAGES/soap.jpg",height: 100,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("Soap"),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Text("\u{20B9}${20} "),
                          Text("\u{20B9}${50}",style: TextStyle(decoration: TextDecoration.lineThrough),)
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset("IMAGES/soaptablet.jpg",height: 100,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("Tablet Soap"),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Text("\u{20B9}${30} "),
                          Text("\u{20B9}${60}",style: TextStyle(decoration: TextDecoration.lineThrough),)
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Image.asset("IMAGES/handwash.png",height: 100,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("Hand Wash"),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Text("\u{20B9}${150} "),
                          Text("\u{20B9}${180}",style: TextStyle(decoration: TextDecoration.lineThrough),)
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset("IMAGES/yardley.png",height: 100,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("Losion"),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          Text("\u{20B9}${248} "),
                          Text("\u{20B9}${270}",style: TextStyle(decoration: TextDecoration.lineThrough),)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 30),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: Colors.indigo[900],
              child: Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
          )

        ],
      ),

    );
  }
}
