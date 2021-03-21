import 'package:flutter/material.dart';
import 'package:yellow_app/View/Details.dart';

class My_Orders extends StatefulWidget {
  @override
  _My_OrdersState createState() => _My_OrdersState();
}

class _My_OrdersState extends State<My_Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(

              onTap: (){
                Navigator.pop(context);
              },
             // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => address()));
            child: Icon(Icons.chevron_left,color: Colors.black,)),
        title: Text("My Orders",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,elevation: 0.0,),


      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 4)],color: Colors.white),
              width: MediaQuery.of(context).size.width,
              height: 160,
              child:
              Column(//mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("IMAGES/shamboo.png",width: 80,height: 80,),
                      SizedBox(width: 50,),
                      Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                        children: [SizedBox(height: 10),
                          Text("Shamboo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Text('\u{20B9}'"148"),
                          )
                        ],
                      ),
                      SizedBox(width: 83,),
                      Text("Repeat"),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("YF-001-1829",style: TextStyle(color: Colors.grey))
                    ],
                  ),

                  Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [SizedBox(width: 35,),
                      Text("Delivered on",style: TextStyle(color: Colors.grey),),SizedBox(width: 30,),
                      Text(":"),SizedBox(width: 10),
                      Text("18-10-2020: 10:00AM",style: TextStyle(color: Colors.grey)),SizedBox(width: 40),
                      //Text("YF-001-1829",style: TextStyle(color: Colors.grey))
                    ],

                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [SizedBox(width: 35,),
                      Text("Payment Method",style: TextStyle(color: Colors.grey),),SizedBox(width: 5),
                      Text(":"),SizedBox(width: 10),
                      Text("COD",style: TextStyle(color: Colors.grey),)
                    ],
                  )
                ],


              ),
            ),
          ),

          //Second Container

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 4)],color: Colors.white),
              width: MediaQuery.of(context).size.width,
              height: 160,
              child:
              Column(//mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("IMAGES/shamboo.png",width: 80,height: 80,),
                      SizedBox(width: 50,),
                      Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                        children: [SizedBox(height: 10),
                          Text("Shamboo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Text('\u{20B9}'"148"),
                          )
                        ],
                      ),
                      SizedBox(width: 83,),
                      Text("Repeat"),



                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("YF-001-1829",style: TextStyle(color: Colors.grey))
                    ],
                  ),

                  Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [SizedBox(width: 35,),
                      Text("Delivered on",style: TextStyle(color: Colors.grey),),SizedBox(width: 30,),
                      Text(":"),SizedBox(width: 10),
                      Text("18-10-2020: 10:00AM",style: TextStyle(color: Colors.grey)),SizedBox(width: 40),
                      //Text("YF-001-1829",style: TextStyle(color: Colors.grey))
                    ],

                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [SizedBox(width: 35,),
                      Text("Payment Method",style: TextStyle(color: Colors.grey),),SizedBox(width: 5),
                      Text(":"),SizedBox(width: 10),
                      Text("COD",style: TextStyle(color: Colors.grey),)
                    ],
                  )
                ],


              ),
            ),
          )
        ],
      ),
    );
  }
}
