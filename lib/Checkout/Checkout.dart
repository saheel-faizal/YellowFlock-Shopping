import 'package:flutter/material.dart';
import 'package:yellow_app/cart/ordercomplete.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  int selectfirst=0;
  int selectsecond=0;
  int selectthird=0;
  bool bagcheck=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(40),
        child: AppBar(shadowColor: Colors.white38,

          leading: IconButton(
            onPressed: (){
          Navigator.pop(context);
          },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 17,
            ),
          ),
          backgroundColor: Colors.white,
          title: Text('Payment',
            style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: ListView(



        children: [

          //Payment Method

          Container(height:35,child: ListTile(leading: Text('Payment Methods',style: TextStyle(color: Colors.brown[300]),))),
          Container(height:35,child: ListTile(leading: Text('Cash on Delivery'),trailing: Radio(
            activeColor: Color(0xff130f40),
            value: selectfirst,
            groupValue: 1,
            onChanged: (value){
              setState(() {
                selectfirst=1;
                selectsecond=0;
                selectthird=0;

              });
            },


          ),)),
          Container(height:35,child: ListTile(leading: Text('Swipe on Delivery'),trailing: Radio(
            activeColor: Color(0xff130f40),
            value: selectsecond,
            groupValue: 1,
            onChanged: (value){
              setState(() {
                selectfirst=0;
                selectsecond=1;
                selectthird=0;
              });
            },
          ),)),
          Container(height:50,child: ListTile(leading: Text('Online Payment'),trailing: Radio(
            activeColor: Color(0xff130f40),
            value: selectthird,
            groupValue: 1,
            onChanged: (value){
              setState(() {
                selectfirst=0;
                selectsecond=0;
                selectthird=1;
              });
            },
          ),)),
          Divider(thickness:6,color: Colors.grey[200],),

          //Wallet Balance

          Container(height:35,child: ListTile(leading: Text('Wallet Balance 0.0'),)),
          ListTile(title: TextFormField(decoration: InputDecoration(hintText:"Enter Amount"),),
          trailing: Container(
            decoration: BoxDecoration(
                color: Color(0xff130f40),
                borderRadius: BorderRadius.circular(4.0)),
            height:35,
            width:70,
            child:
            Center(child: Text('Redeem',
              style: TextStyle(color: Colors.white),))),),
          Divider(color: Colors.white,),
          Divider(thickness:6,color: Colors.grey[200],),

          //Redeem Coupon
          Container(
            height: 40,
              child: ListTile(leading: Text('Redeem Coupon'),)),
          Container(height: 60,
            child: ListTile(
              title: Container(height: 39,
                child: TextFormField(
                decoration:
                    InputDecoration(contentPadding: EdgeInsets.all(8.0),
                    border:OutlineInputBorder(),hintText:"Enter Amount"),),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    color: Color(0xff130f40),
                    borderRadius: BorderRadius.circular(4.0)),
                height:35,
                width:70,
                child:
                Center(child: Text('Apply',
                  style: TextStyle(color: Colors.white),)),),),
          ),

          Divider(thickness:6,color: Colors.grey[200],),

          //Carry bag

          Container(
            height: 70,
            child: ListTile(
              title: Text('To be delivered in carry bags'),
            subtitle: Text('(Rs.20/ carry bag)'),
            trailing: Checkbox(
              activeColor: Color(0xff130f40),

              value: bagcheck,
              onChanged: (value){
                setState(() {
                  if(bagcheck==false){
                    bagcheck=true;
                  }else{
                    bagcheck=false;
                  }

                });
              },
            )),
          ),


          Divider(thickness: 6,color: Colors.grey[200],),

          //Delivery Address

          Container(
            height: 125,
            child: ListTile(

              title: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 8),
                child: Text('Delivery Address'),
              ),
              subtitle: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('saheel',style: TextStyle(color: Colors.grey[600]),),
                  Text('House',style: TextStyle(color: Colors.grey[600]),),
                  Text('calicut',style: TextStyle(color: Colors.grey[600]),),
                  Text('673010',style: TextStyle(color: Colors.grey[600]),),
                  Text('994545484',style: TextStyle(color: Colors.grey[600]),),


                ],
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    color: Color(0xff130f40),
                    borderRadius: BorderRadius.circular(4.0)),
                height:35,
                width:100,
                child:
                Center(child: Text('Edit Address',
                  style: TextStyle(color: Colors.white),)),
                ),
            ),
          ),

          Divider(thickness: 6,color: Colors.grey[200],),

          Container(height: 40,
              child: ListTile(title: Text('Payment Details'),)),


          Container(height: 30,
              child: ListTile(title: Text('Total'),trailing: Text('Rs 452'),)),
          SizedBox(height: 15,),
          Divider(height: 1,),

          Container(height: 30,
              child: ListTile(title: Text('Delivery Charge'),trailing: Text('Rs 258'),)),
          SizedBox(height: 15,),
          Divider(height: 1,),
          Container(height: 30,
              child: ListTile(title: Text('Carry bag Charge'),trailing: Text('Rs 556'),)),
          SizedBox(height: 15,),
          Divider(height: 1,),

          Container(child: ListTile(title: Text('Total'),trailing: Column(crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 10,),
              Text('Rs 1599'),
              SizedBox(height: 5,),
              Text('You Save Rs 750',style: TextStyle(color: Colors.indigo[900]),)
            ],
          ),)
          ),
          Divider(thickness: 6,color: Colors.grey[200],),
          Container(
              height: 60,
              child: ListTile(title: Text('Total Rs 1599'),trailing: Container(
                decoration: BoxDecoration(
                    color: Color(0xff130f40),
                    borderRadius: BorderRadius.circular(7.0)),
                height: 33,
                width: 100,

                  child: Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Center(child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ordercomplete()));
                      },
                      child: Row(
                        children: [
                          Text('Proceed',style: TextStyle(color: Colors.white),),
                          Icon(Icons.navigate_next,color: Colors.white,)
                        ],
                      ),
                    )),
                  )),)),



        ],
      ),
    );
  }
}
