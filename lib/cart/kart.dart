import 'package:flutter/material.dart';
class cartpage extends StatefulWidget {
  @override
  _cartpageState createState() => _cartpageState();
}


class _cartpageState extends State<cartpage> {
  int val=0;
  int price=1000;
  int total=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(" My Cart"),
      ),
      body: ListView(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context,index){
               return Container(
                 child: Column(
                   children: [
                     ListTile(
                       leading: Image.asset("IMAGES/shamboo.png"),
                       title: Text("Shampoo"),
                       subtitle: Text("RS-140"),
                       trailing: Container(child: Container(
                           height: 100,
                           width: 80,

                           child: Row(
                             children: [
                               GestureDetector(
                                 onTap: (){

                                   setState((

                                       ) {
                                     val ++;
                                     total=total+price;


                                   });


                                 },
                                 child: Container(child: Icon(Icons.add)

                                 ),
                               ),
                               Text(val.toString()),
                               GestureDetector(
                                 onTap: (){

                                   setState(() {
                                     if(val>0){
                                       val --;
                                       total=total-price;}

                                   });

                                 },
                                 child: Container(
                                     margin: EdgeInsets.only(bottom: 15),
                                     child: Icon(Icons.minimize)),
                               ),

                             ],

                           )
                       )
                       ),

                     )
                   ],
                 ),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),)


                );



              }),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Total Price="+total.toString()),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
