import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yellow_app/home/home_page.dart';
class Grocery extends StatefulWidget {
  @override
  _GroceryState createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      children: [Container(
        height: 170,
        child: ListView(
          children: [
            CarouselSlider(
              items: [

                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("IMAGES/elariaa.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('IMAGES/vegetables.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('IMAGES/vegtable.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('IMAGES/elaria.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('IMAGES/vegtable.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                //enlargeCenterPage: true,
                autoPlay: true,
                initialPage: 0,
                aspectRatio: 2 / 0,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 600),
                viewportFraction: 0.8,
              ),

            ),
          ],
        ),
      ),

      ],
    ),);
  }
}
