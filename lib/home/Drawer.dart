import 'package:flutter/material.dart';
import 'package:yellow_app/Notification/Notification_Page.dart';
import 'package:yellow_app/Offer%20Pages/ComboOffers.dart';
import 'package:yellow_app/Offer%20Pages/MyFavourites.dart';
import 'package:yellow_app/Offer%20Pages/TopDeals.dart';
import 'package:yellow_app/bag/new_cart.dart';
class MainDrawer extends StatefulWidget {

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: [
            Container(
                height: 65,
                color: Colors.blueAccent,
                child: ListTile(
                  leading: Icon(Icons.menu,size: 40,color: Colors.white70,),
                )
            ),
            GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Combo()));
              },
              child: Container(height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.local_offer_outlined),
                  title: Text("Combo Offer"),

                ),
              ),
            ),
            Divider(height: 4,thickness: 4,color: Colors.black12,),
            GestureDetector(onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>TopDeals()));
            },
              child: Container(height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.filter_vintage_sharp),
                  title: Text("Top Deals"),
                ),
              ),
            ),
            Divider(height: 3,thickness: 3,color: Colors.black12),
            GestureDetector(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Myorders()));
              },
              child: Container(height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.book_outlined),
                  title: Text("My Order"),
                ),
              ),
            ),
            Divider(height: 3,thickness: 3,color: Colors.black12,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFavourites()));
              },
              child: Container(height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.favorite_border),
                  title: Text("My Favourites"),
                ),
              ),
            ),
            Divider(height: 3,thickness: 3,color: Colors.black12,),
            Container(height: 55,
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text("My Wallet"),
              ),
            ),
            Divider(height: 3,thickness: 3,color: Colors.black12,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => new_cartpage()));
                },
              child: Container(height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.shopping_cart_rounded),
                  title: Text("My Cart"),
                ),
              ),
            ),
            Divider(height: 3,thickness: 3,color: Colors.black12),
            GestureDetector(onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Not()));
            },
              child: Container(height: 55,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.notifications_none_outlined),
                  title: Text("Notification"),
                ),
              ),
            ),
            Divider(height: 3,thickness: 3,color: Colors.black12),
            Container(height: 65,
              color: Colors.white,
              child: ListTile(
              ),
            ),
            Divider(height: 3,thickness: 3,color: Colors.black12),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.share),
                  title: Text("Share with Friends"),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text("Rate us on PlayStore"),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.security),
                title: Text("Contact & Support"),
              ),
            ),

          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
          )
        ],
      ),
    );
  }
}
