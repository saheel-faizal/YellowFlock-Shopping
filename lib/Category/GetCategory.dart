import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'GetCategoryClass.dart';
import 'SubCategory.dart';
import 'package:yellow_app/Category/GetCategoryClass.dart';

class GetCategory extends StatefulWidget {
  @override
  _GetCategoryState createState() => _GetCategoryState();
}

class _GetCategoryState extends State<GetCategory> {

  Future<CategoryApi> getcat() async{
    String url="https://ecom.cybaze.com/yellowflock-api/get_categories";
    var response=await http.get(url);
    if(response.statusCode==200){
      return CategoryApi.fromJson(jsonDecode(response.body));
    }else{
      print('no data');
    }
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(physics: ScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
      FutureBuilder(
        future: getcat(),
          builder: (context,snapshot){
          if(snapshot.hasData){
            List <Category> arr=snapshot.data.data.categories;
            // List <SubCategory> arr1=snapshot.data.subCategories;
            return GridView.builder(itemCount: arr.length,
                shrinkWrap: true,
                controller: ScrollController(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 6,
                    childAspectRatio: 2
                ),
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SubCategoryPage()));
                    },
                    child: Container(color: Colors.grey,
                      height: 30,
                      child: Column(
                        children: [

                          Text(arr[index].title.toString()),
                          // Text(arr1[index].id.toString())
                        ],
                      ),),
                  );
                });
          }else{
            return Container(margin: EdgeInsets.only(top:250 ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CircularProgressIndicator(),
                Text('Loading')
              ],),
            );
          }

          })
    ],),);
  }
}
