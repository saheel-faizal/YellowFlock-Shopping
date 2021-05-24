import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yellow_app/Category/GetCategory.dart';
import 'package:yellow_app/Notification/Notification_Page.dart';
import 'package:yellow_app/Offer%20Pages/ComboOffers.dart';
import 'package:yellow_app/Offer%20Pages/MyFavourites.dart';
import 'package:yellow_app/Offer%20Pages/TopDeals.dart';
import 'package:yellow_app/View/Details.dart';
import 'package:yellow_app/bag/new_cart.dart';
import 'package:yellow_app/cart/Cart_page.dart';
import 'package:yellow_app/cart/MyOrders.dart';
import 'package:yellow_app/home/bottomnav_home.dart';
import 'package:yellow_app/home/home_page.dart';
import 'package:yellow_app/tabs/grocery.dart';
import 'package:yellow_app/tabs/gros.dart';
import 'package:yellow_app/tabs/veg.dart';


import '../Offer Pages/TopDeals.dart';

class HomeSample extends StatefulWidget {
  @override
  _HomeSampleState createState() => _HomeSampleState();
}

class _HomeSampleState extends State<HomeSample> with SingleTickerProviderStateMixin {
  TabController _controller;
  String name;

  void getdata() async{
    final preference = await SharedPreferences.getInstance();
    name = preference.getString('name');
  }



  @override
  void initState() {
    // TODO: implement initState
    getdata();
    super.initState();
    _controller = new TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Drawer(
          child: ListView(
            children: [
              Container(
                  height: 65,
                  color: Colors.indigo[900],
                  child: ListTile(
                    leading: Icon(Icons.menu,size: 40,color: Colors.white70,),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Delivery Location",style: TextStyle(fontSize: 10,color: Colors.white),),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              children: [
                                Text("Kozhikode",style: TextStyle(fontSize: 12,color: Colors.white),),
                                SizedBox(width: 20,),
                                Icon(Icons.edit_outlined,color: Colors.white,size: 15,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
              ),
              GestureDetector(
                onTap: (){
                  getdata();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ComboOffers()));
                },
                child: Container(height: 55,
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.local_offer_outlined),
                    title: Text(name.toString()),
                  ),
                ),
              ),
              Divider(height: 4,thickness: 4,color: Colors.black12,),
              GestureDetector(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TopDeals()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => My_Orders()));
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyFavourites()));
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
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => address()));
                },
                child: Container(height: 55,
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.account_balance_wallet),
                    title: Text("My Wallet"),
                  ),
                ),
              ),
              Divider(height: 3,thickness: 3,color: Colors.black12,),
              GestureDetector(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => cart_page()));
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>new_cartpage()));
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => Not()));
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
              Container(
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.share),
                  title: Text("Share with Friends"),
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
              Container(
                color: Colors.white,
                child: SizedBox(height: 60),
                ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
      toolbarHeight: 80,
    //  leading: Icon(Icons.menu),

      title: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
                onTap: (){
                  showDialog(context: context,
                      builder: (BuildContext context){
                        return Simple_dialog('kozhikode');
                      });
                },
                child: Text("Kozhikode",style: TextStyle(fontSize: 14),)),
            Icon(Icons.location_on_outlined,size: 20,),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10,top: 5),
                child: Container(
                  height: 35,
                  width: 180,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search here..",
                      hintStyle: TextStyle(color: Colors.black,fontSize: 11),
                      suffixIcon: Icon(Icons.search_rounded,size: 20,color: Colors.black,),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),

                        borderRadius: BorderRadius.circular(9),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      backgroundColor: Color(0xff130f50),
    ),
      body: new ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
        SizedBox(height: 8,),
        new Container(decoration: new BoxDecoration(
            color: Colors.grey[300]),
        child: TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.black,
          indicator: BoxDecoration(color: Color(0xff130f50)),
          controller: _controller,
          tabs: [

            Container(
              child: new Tab(

                text: 'Home',
              ),
              width: 100,
            ),

            Container(
              child: new Tab(

                text: 'Grocery',
              ),
              width: 100,
            ),
            Container(
              child: new Tab(

                text: 'Vegetables',
              ),
              width: 80,
            ),
            Container(
              child: new Tab(

                text: 'Meat',
              ),
              width: 80,
            ),
            Container(
              child: new Tab(

                text: 'Categories',
              ),
              width: 80,
            ),
            Container(
              child: new Tab(

                text: 'Cake',
              ),
              width: 80,
            ),
          ],

        ),),
        new Container(
          height: MediaQuery.of(context).size.height*0.9,
          child: new TabBarView(
            controller: _controller,
            children: <Widget>[
              Home_page(),
              Grocery(),
              Veg(),
              gros(),
              GetCategory(),
              Veg(),



            ],
          ),
        ),


      ],
      ),




    );
  }
}


// Container(width:80,child: Tab(text: "Grocery",)),
// Container(width: 80,child: Tab(text: "Veg",)),
// Container(width:80,child: Tab(text: "gros",)),


// TabBar(
// isScrollable: true,
// indicator: BoxDecoration(color: Color(0xff130f70)),
// labelColor: Colors.white,
// unselectedLabelColor: Colors.grey,
// tabs: [
// Container(width:80,child: Tab(text: "Grocery",)),
// Container(width: 80,child: Tab(text: "Veg",)),
// Container(width:80,child: Tab(text: "gros",)),
//
//
// ],),