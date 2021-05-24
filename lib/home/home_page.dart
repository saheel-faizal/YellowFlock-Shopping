import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/widgets.dart';
import 'package:yellow_app/Notification/Notification_Page.dart';
import 'package:yellow_app/Offer%20Pages/ComboOffers.dart';
import 'package:yellow_app/View/Details.dart';
import 'package:yellow_app/bag/new_cart.dart';
import 'package:yellow_app/cart/Cart_page.dart';
import 'package:yellow_app/cart/MyOrders.dart';
import 'package:yellow_app/cart/address.dart';
import 'package:yellow_app/home/Drawer.dart';
import 'package:yellow_app/product_details/details.dart';
import 'alert.dart';
import 'bottom_bar.dart';

class Home_page extends StatefulWidget {
  @override
  _Home_pageState createState() => _Home_pageState();
}
class _Home_pageState extends State<Home_page> with SingleTickerProviderStateMixin {
  TabController _controller;


  // Color _colorContainer = Colors.blue;
  // int _selectedIndex = 0;
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  // bool isSelected  = true;
  //
  // _isSelected() {
  //   setState(() {
  //     if (isSelected) {
  //       isSelected = false;
  //     } else {
  //       isSelected = true;
  //     }
  //   });
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 5, vsync: this);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      ListView(
        physics: ScrollPhysics(),
        children: [
          SizedBox(height: 10),
          // Category Bar
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
            height: 170,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [

                    //1st Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage("IMAGES/Elar.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('IMAGES/vegetables.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('IMAGES/choco.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('IMAGES/elaria.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage('IMAGES/soaptablet.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 180.0,
                    //enlargeCenterPage: true,
                    autoPlay: true,
                    initialPage: 0,
                    aspectRatio: 2 / 0,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 600),
                    viewportFraction: 0.8,
                  ),

                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Icon(Icons.circle,color: Colors.grey,),
                Text("Top Deals",style: TextStyle(fontSize: 15),),
              ],
            ),
          ),

          //Top deals

          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                height: 140.0,
                child: Container(
                  color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>details()));
                          },
                          child: Column(
                            children: [
                              Image.asset('IMAGES/shamboo.png',height: 90),
                              Text("Shampoo",style:TextStyle(fontSize: 18)),
                              SizedBox(height: 5,),
                              Text('\u{20B9}'+"148"),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: GestureDetector(
                          onTap: (){},
                          child: Column(
                            children: [
                              Image.asset('IMAGES/soap.jpg',height: 90,width: 80,),
                              Text("Elaria",style:TextStyle(fontSize: 18)),
                              SizedBox(height: 5,),
                              Text('\u{20B9}'+"148"),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            Image.asset('IMAGES/shamboo.png',height: 90),
                            Text("Shampoo",style:TextStyle(fontSize: 18)),
                            SizedBox(height: 5,),
                            Text('\u{20B9}'+"148"),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: GestureDetector(
                          onTap: (){},
                          child: Column(
                            children: [
                              Image.asset('IMAGES/soap.jpg',height: 90,width: 80,),
                              Text("Elaria",style:TextStyle(fontSize: 18)),
                              SizedBox(height: 5,),
                              Text('\u{20B9}'+"148"),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(
                          children: [
                            Image.asset('IMAGES/shamboo.png',height: 90),
                            Text("Shampoo",style:TextStyle(fontSize: 18)),
                            SizedBox(height: 5,),
                            Text('\u{20B9}'+"148"),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: GestureDetector(
                          onTap: (){},
                          child: Column(
                            children: [
                              Image.asset('IMAGES/soap.jpg',height: 90,width: 80,),
                              Text("Elaria",style:TextStyle(fontSize: 18)),
                              SizedBox(height: 5,),
                              Text('\u{20B9}'+"148"),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),


          //top deals
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey[800]),
                      height: 140,width: 220,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30,left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("50% offer on",style: TextStyle(color: Colors.white),),
                            SizedBox(height: 10,),
                            Text("FROZEN ITEMS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            SizedBox(height: 10,),
                            Container(
                               decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                              height: 30,
                              width: 100,
                              child: Center(child: Text("SHOP NOW",style: TextStyle(color: Colors.white),)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      height: 140,
                      child: ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Image.asset('IMAGES/choco.jpg',fit: BoxFit.fill,)),
                    ),
                  ),),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                /*decoration: BoxDecoration(border: Border.all(color: Colors.black)),*/
                height: 150,
                width: MediaQuery.of(context).size.width,
                child:  Image.asset('IMAGES/soap.jpg',fit: BoxFit.scaleDown,),
              ),
            ],
          ),


        ],
        ),

        // Combo offers
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Icon(Icons.circle,color: Colors.grey,),
              Text("Combo offers",style: TextStyle(fontSize: 15),),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              height: 140.0,
              child: Container(
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                        height: 80,
                        width: 290,
                        child: Row(
                          children: [
                            Image.asset('IMAGES/pepsiandco.jpg',fit: BoxFit.fill,width: 100,),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Pepsi: 3L"),
                                  Text("buy 1 get "),
                                 Text("Cocacola 750 ml"),
                                  Text('\u{20B9}'+"148"),
                                ],
                              ),
                            ),
                        ],),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                        height: 80,
                        width: 290,
                        child: Row(
                          children: [
                            Image.asset('IMAGES/pepsiandco.jpg',fit: BoxFit.fill,width: 100,),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,top: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Pepsi: 3L"),
                                  Text("buy 1 get "),
                                  Text("Cocacola 750 ml"),
                                  Text('\u{20B9}'+"148"),
                                ],
                              ),
                            ),
                          ],),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 150,),

        //combo offers


      ],
    ),
      //BOTTOM NAVIGATION

      //BOTTOM NAVIGATION
    );
  }
}

class Simple_dialog extends StatelessWidget {
  final title;
  Simple_dialog(this.title);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40,left: 10),
          child: AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),side: BorderSide(color: Colors.grey)),
              backgroundColor: Colors.indigo[900],
              content: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                        child: Text(title,style: TextStyle(color: Colors.white,fontSize: 15),)),
                  )),
               title: Text("Choose Nearest Store",style: TextStyle(color: Colors.white,fontSize: 15),),
            ),
          ),
      ],
    );
  }
}