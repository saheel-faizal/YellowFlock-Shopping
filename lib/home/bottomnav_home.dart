import 'package:flutter/material.dart';
import 'package:yellow_app/Edit%20Profile/EditProfile.dart';
import 'package:yellow_app/Notification/Notification_Page.dart';
import 'package:yellow_app/Offer%20Pages/ComboOffers.dart';
import 'package:yellow_app/Search/SearchPage.dart';
import 'package:yellow_app/View/Details.dart';
import 'package:yellow_app/bag/new_cart.dart';
import 'package:yellow_app/cart/kart.dart';
import 'package:yellow_app/home/Drawer.dart';
import 'package:yellow_app/home/home_page.dart';
import 'package:yellow_app/tabs/homesample.dart';
import 'bottom_bar.dart';
//import 'package:eva_icons_flutter/eva_icons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class Bottom_nav_home extends StatefulWidget {
  @override
  _Bottom_nav_homeState createState() => _Bottom_nav_homeState();
}
enum BottomIcons { Home, Favorite, Search, Account }
class _Bottom_nav_homeState extends State<Bottom_nav_home> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // drawer: MainDrawer(),
      ///appbar
      /*appBar: AppBar(
        toolbarHeight: 90,

        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Kozhikode",style: TextStyle(fontSize: 12),),
            Icon(Icons.location_on_outlined,size: 23,),
          ],
        ),


        actions: [
          Row(
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
        ],
        backgroundColor: Colors.indigo[900],
      ),*/

      ///bottom navigation bar
      bottomNavigationBar:Stack(
        children: <Widget>[
          //Home_page()
           bottomIcons == BottomIcons.Home
              ? HomeSample()
          :bottomIcons == BottomIcons.Search
             ? SearchResult()
         //  :bottomIcons == BottomIcons.Favorite
            // ? cartpage()
          /*Center(
            child: Text(
              "Hi, this is home page",
              style: TextStyle(fontSize: 18),
            ),
          )*/
              : Container(),
          bottomIcons == BottomIcons.Favorite
              ? new_cartpage()
            /*  : Container(),
          bottomIcons == BottomIcons.Account
              ? Center(
            child: Text(
              "Hi, this is search page",
              style: TextStyle(fontSize: 18),
            ),
          )*/
              : Container(),
          bottomIcons == BottomIcons.Account
              ? address()
              : Container(),
          Padding(
            padding: const EdgeInsets.only(top: 6,left: 14,right: 14),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25),),color: Colors.grey[200],),

                padding: EdgeInsets.only(left: 24, right: 24, bottom: 20,top: 5
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      BottomBar(
                          onPressed: () {
                            setState(() {
                              bottomIcons = BottomIcons.Home;
                            });
                          },
                          bottomIcons:
                          bottomIcons == BottomIcons.Home ? true : false,
                          icons: EvaIcons.home,
                          text: "Home"),
                      BottomBar(
                          onPressed: () {
                            setState(() {
                              bottomIcons = BottomIcons.Search;
                            });
                          },
                          bottomIcons:
                          bottomIcons == BottomIcons.Search ? true : false,
                          icons: EvaIcons.search,
                          text: "Search"),
                      BottomBar(
                          onPressed: () {
                            setState(() {
                              bottomIcons = BottomIcons.Favorite;
                            });
                          },
                          bottomIcons:
                          bottomIcons == BottomIcons.Favorite ? true : false,
                          icons: EvaIcons.shoppingBagOutline,
                          text: "Bag"),
                      BottomBar(
                          onPressed: () {
                            setState(() {
                              bottomIcons = BottomIcons.Account;
                            });
                          },
                          bottomIcons:
                          bottomIcons == BottomIcons.Account ? true : false,
                          icons: EvaIcons.personOutline,
                          text: "Account"),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
