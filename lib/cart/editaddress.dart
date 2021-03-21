import 'package:flutter/material.dart';
class editprofile extends StatefulWidget {
  @override
  _editprofileState createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
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
        title: Text("Edit profile",style: TextStyle(color: Colors.black),),
      ),
      body: Form(
        key: Key,
        child: ListView(
          children: [
            SizedBox(height: 50,),
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
              child: Text("Phone"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13,right: 13),
              child: Container(

                color: Colors.white70,
                child: TextFormField(
                  keyboardType:TextInputType.number,
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
            SizedBox(height: 30,),
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

          ],
        ),
      ),
    );
  }
}
