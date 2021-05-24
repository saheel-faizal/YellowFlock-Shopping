import 'package:flutter/material.dart';
import 'package:yellow_app/Edit%20Profile/EditProfile.dart';
import 'package:yellow_app/Offer%20Pages/MyFavourites.dart';
import 'package:yellow_app/bag/new_cart.dart';
import 'package:yellow_app/cart/MyOrders.dart';



class address extends StatefulWidget {
  String naam;

  address({this.naam});


  @override
  _addressState createState() => _addressState();
}

class _addressState extends State<address> {

  String name="";
  String mobile="";
  String address="";


  bool visibility=false;

  bool select=true;



  @override
  Widget build(BuildContext context) {
    TextEditingController name = new TextEditingController(text: widget.naam);
    return Scaffold(
      body: ListView(children: [
        Container(
          width: 400,height: 200,color: Colors.indigo[900],
          child: Center(child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(width:MediaQuery.of(context).size.width,height:MediaQuery.of(context).size.height,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                            },
                            child: Text("Edit",style: TextStyle(color: Colors.grey,fontSize: 15),)),
                      ],
                    ),
                    Text("Reghana"),SizedBox(height: 5),
                    Text("Palayam,kozhikode",style: TextStyle(color: Colors.grey,fontSize: 10),),
                    Text("Kerala,673000",style: TextStyle(color: Colors.grey,fontSize: 10)),
                    Text("+91 70125533535",style: TextStyle(color: Colors.grey,fontSize: 10))

                  ],
                ),


              ),
            ),
          )
          ),
        ),

        Column(
          children: [SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Orders()));
              },
              child: Container(
                width: 300,height: 50,decoration:
              BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 2
                  )]
              ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text("My Orders"),
                    ),
                    Spacer(),
                    IconButton(icon:Icon(Icons.chevron_right),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Orders()));
                    },)
                  ],
                ),
              ),
            ),SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFavourites()));
              },
              child: Container(
                width: 300,height: 50,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 2
                  )]
              ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text("My Favourites"),
                    ),
                    Spacer(),
                    IconButton(icon:Icon(Icons.chevron_right),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFavourites()));
                    },)
                  ],
                ),
              ),
            ),SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new_cartpage()));
              },
              child: Container(
                width: 300,height: 50,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black,blurRadius: 2
                  )]
              ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("My Cart"),
                    ),
                    Spacer(),
                    IconButton(icon:Icon(Icons.chevron_right),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>new_cartpage()));
                    },)
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  if(visibility==false){
                    visibility=true;
                  }
                  else{
                    visibility=false;
                  }

                  if(select){
                    select=false;
                  }
                  else{
                    select=true;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(  borderRadius: BorderRadius.circular(10), color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.black,blurRadius: 2)]),
                width: 300,height: 50,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("My Wallet",style: TextStyle(fontSize: 15,color: Colors.black),),
                    ),
                    Spacer(),
                    IconButton(icon:select?Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black,):
                    Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),

        Visibility(
          visible: visibility,
          child: Column
            (
            children: [
              ClipRRect(
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(),color: Colors.indigo[900]),
                    width: 295,height: 110,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.account_balance_wallet,color: Colors.white,size: 15,),
                                  Text("Current Balance",style: TextStyle(color: Colors.white,fontSize: 12),)
                                ],
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Text("\u{20B9}""0.00",style: TextStyle(color: Colors.white,fontSize: 20),),
                                  )
                                ],

                              ) ])
                    ) ),
              ),
            ],
          ),
        ),
      ] ),
    );
  }
}




