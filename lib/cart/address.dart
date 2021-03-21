import 'package:flutter/material.dart';
class Editaddress extends StatefulWidget {
  @override
  _EditaddressState createState() => _EditaddressState();
}

class _EditaddressState extends State<Editaddress> {
  String selectedvalue;
  final Key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.chevron_left,color: Colors.black,)),
        title: Text("Address",style: TextStyle(color: Colors.black),),
      ),
      body: Form(
        key: Key,
        child: ListView(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 13,bottom: 5),
              child: Text("Name"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Container(

                color: Colors.white70,
                child: TextFormField(

                  validator: (value){
                    if(value.isEmpty){
                      return "Enter Name";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(


                    enabledBorder: OutlineInputBorder(


                        borderSide:BorderSide(
                            color: Colors.white70
                        )
                    ),

                  ),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 13,bottom: 5),

              child: Text("House Name"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Container(
                color: Colors.white70,
                child: TextFormField(
                  validator: (value){
                    if(value.isEmpty){
                      return "Enter House Name";
                    }
                    else{
                      return null;
                    }
                  },

                  decoration: InputDecoration(


                    enabledBorder: OutlineInputBorder(


                        borderSide:BorderSide(
                            color: Colors.white70
                        )
                    ),

                  ),

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 13,bottom: 5),
              child: Text("Landmark"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Container(

                color: Colors.white70,
                child: TextFormField(
                  keyboardType:TextInputType.number,
                  validator: (value){
                    if(value.isEmpty){
                      return "Enter Landmark";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(


                        borderSide:BorderSide(
                            color: Colors.white70
                        )
                    ),

                  ),

                ),

              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 13,bottom: 5),
              child: Text("City"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Container(

                color: Colors.white70,
                child: TextFormField(

                  validator: (value){
                    if(value.isEmpty){
                      return "Enter City";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(


                    enabledBorder: OutlineInputBorder(


                        borderSide:BorderSide(
                            color: Colors.white70
                        )
                    ),

                  ),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 13,bottom: 5),
              child: Text("Delivery Area"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Container(
                color: Colors.white70,
                child: DropdownButtonFormField(
                    decoration: InputDecoration(


                      enabledBorder: OutlineInputBorder(


                          borderSide:BorderSide(
                              color: Colors.white70
                          )
                      ),

                    ),
                    value: selectedvalue,
                    items: [
                      DropdownMenuItem(child: Text("Kozhikkod"),
                        value: 1,
                      ),
                      DropdownMenuItem(child: Text("Vadakara"),
                        value: 2,
                      ),
                      DropdownMenuItem(child: Text("Nadapuram"),
                        value: 3,
                      ),
                      DropdownMenuItem(child: Text("Kuttyady"),
                        value: 4,
                      ),
                      DropdownMenuItem(child: Text("Kallachi"),
                        value: 5,
                      ),
                    ],
                    onChanged:(value){
                      setState(() {
                        selectedvalue=value;
                      });
                    }),
              ),
            ), SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 13,bottom: 5),
              child: Text("Pincode"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Container(

                color: Colors.white70,
                child: TextFormField(

                  validator: (value){
                    if(value.isEmpty){
                      return "Enter Pin";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(


                    enabledBorder: OutlineInputBorder(


                        borderSide:BorderSide(
                            color: Colors.white70
                        )
                    ),

                  ),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 13,bottom: 5),
              child: Text("Mobile"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Container(

                color: Colors.white70,
                child: TextFormField(

                  validator: (value){
                    if(value.isEmpty){
                      return "Enter Mobile";
                    }
                    else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(


                    enabledBorder: OutlineInputBorder(


                        borderSide:BorderSide(
                            color: Colors.white70
                        )
                    ),

                  ),


                ),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: GestureDetector(
                onTap: (){
                  if(Key.currentState.validate());
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5,),color: Colors.indigo[900]),
                  child: Center(child: Text("SUBMIT",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
