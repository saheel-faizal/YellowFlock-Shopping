import 'package:flutter/material.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:yellow_app/Checkout/Checkout.dart';
import 'package:yellow_app/home/bottomnav_home.dart';
import 'package:yellow_app/tabs/homesample.dart';
class new_cartpage extends StatefulWidget {
  @override
  _new_cartpageState createState() => _new_cartpageState();
}

class _new_cartpageState extends State<new_cartpage> {
  @override
  int val=0;
  int price=120;
  int total=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        leading: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.clear_rounded,color: Colors.black,)),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text("My Cart",style: TextStyle(color: Colors.black),
      ),
        ),



            backgroundColor: Colors.white,),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 50),
            child: Container(
              height: 100,width:MediaQuery.of(context).size.width,
              decoration:
              BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(20),color: Colors.white,
                  boxShadow:[BoxShadow(color:Colors.black12,blurRadius: 16,spreadRadius: 1.0 )]),
              child: Row(
                children: [
                  Container(
                    child: Image.asset("IMAGES/shamboo.png",width: 70,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 60),
                    child: Column(
                      children: [
                        Text("Shampoo",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("Rs:120")
                      ],
                    ),
                  ),
                  SizedBox(width: 100,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap:(){
                            setState(() {
                              if(val>0){
                                val --;
                                total=total-price;
                              }
                            });
                          },
                          child:   Container(

                            decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(5),color: Colors.blueGrey.shade900),
                            child: Center(
                              child: Text("-",style: TextStyle(color: Colors.white,fontSize: 15),
                              ),
                            ),
                            height: 20,width: 20,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(5),color: Colors.grey.shade100),
                          child: Center(child: Text(val.toString())),
                          height: 20,width: 20,
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap:(){
                            setState(() {
                              val++;
                              total=total+price;
                            });
                          },
                          child:   Container(
                            decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(5),color: Colors.blueGrey.shade900),
                            child: Center(child: Text("+",style: TextStyle(color: Colors.white),)),
                            height: 17,width: 20,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const  EdgeInsets.only(top: 250,left: 10,right: 10,),
            child: Container(
              child: FDottedLine(
                child: Container(
                  height: 50,
                  width: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Total:                                                         "+total.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    ],
                  ),
                ),

                color: Colors.grey,
                height: 50,
                width: 80,
                strokeWidth: 2,
                dottedLength: 20,
                space: 2,

              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const  EdgeInsets.only(left: 15,right: 15,top: 20),
            child: GestureDetector(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Checkout()));
              },
              child: Container(
                  child: Center(child: Text("Checkout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.indigo[900])
              ),
            ),
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}

