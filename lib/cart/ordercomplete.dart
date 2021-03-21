import 'package:flutter/material.dart';
import 'package:yellow_app/home/bottomnav_home.dart';
import 'package:yellow_app/tabs/homesample.dart';
class ordercomplete extends StatefulWidget {
  @override
  _ordercompleteState createState() => _ordercompleteState();
}

class _ordercompleteState extends State<ordercomplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Order Complete",style: TextStyle(color: Colors.black),),
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.backspace,color: Colors.black,)),
      ),
      body: ListView(
        children: [
          SizedBox(height: 60,),
          Container(
            child: Image.asset("IMAGES/OrderPlace.png",height: 300,),
          ),
          SizedBox(height: 30,),
          Container(
            child: Column(
              children: [
                Text("Your Odrer Is Placed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                SizedBox(height: 30,),
                Text("It is very easy to each best quality",style: TextStyle(color: Colors.grey,fontSize: 15),),
                Text("among all products on the internet!",style: TextStyle(color: Colors.grey),)
              ],
            ),
          ),
          SizedBox(height:50,),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_nav_home()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(2),color: Colors.indigo[900]),
                  child: Center(child: Text("Continue Shopping",style:TextStyle(color: Colors.white,fontSize: 15),)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
