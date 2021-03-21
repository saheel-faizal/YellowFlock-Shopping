import 'package:flutter/material.dart';
class cart_page extends StatefulWidget {
  @override
  _cart_pageState createState() => _cart_pageState();
}


class _cart_pageState extends State<cart_page> {
  int val=0;
  int price=1000;
  int total=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Total Price="+total.toString()),
              ),
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
