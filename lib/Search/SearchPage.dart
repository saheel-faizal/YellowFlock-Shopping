import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:yellow_app/Beauty_Care/Beauty.dart';
import 'package:yellow_app/Edit%20Profile/EditProfile.dart';
import 'package:yellow_app/Notification/Notification_Page.dart';

class SearchItem {
  final String name;
  SearchItem(this.name);
}

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {

  static List<SearchItem> item = [
    SearchItem('Beauty and Oral'),
    SearchItem('Apple'),
    SearchItem('Soap'),
    SearchItem('Shampoo'),
    SearchItem('Vegetable'),
  ];

  final List<Widget> ListSample=[];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      toolbarHeight: 90,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 25,top: 15),
          child: IconButton(
            tooltip: 'Search Item',
            onPressed: () => showSearch(
              context: context,
              delegate: SearchPage<SearchItem>(
                onQueryUpdate: (s) => print(s),
                items: item,
                searchLabel: 'Search Item',
                //suggestion: Center(
                  //child: Text('Filter people by Items',style: TextStyle(fontWeight: FontWeight.bold),),),
                failure: Center(
                  child: Text('No Items found.',style: TextStyle(fontSize: 16),),
                ),
                filter: (search) => [
                  search.name,
                ],
                builder: (search) => ListTile(
                  title: Text(search.name,style: TextStyle(),),
                  onTap: (){
                    if(search.name == "Beauty and Oral"){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Beauty_home()));
                    }else if(search.name == "Apple"){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Not()));
                    }
                    else if(search.name == "Shampoo"){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                    }
                    else if(search.name == "Soap"){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Not()));
                    }
                  }
                ),
              ),
            ),
            icon: Icon(Icons.search,color: Colors.grey,size: 30,),
          ),
        ),

      ],
    ),
    );
  }
}
