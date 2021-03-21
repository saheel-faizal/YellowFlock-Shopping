import 'package:flutter/material.dart';
import 'package:yellow_app/View/Details.dart';

class EditProfile extends StatefulWidget {
  String nam;
  EditProfile({this.nam});
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  final key=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    TextEditingController name = new TextEditingController(text: widget.nam);
    TextEditingController Housename = new TextEditingController();
    TextEditingController Mobile = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Edit Profile",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Form(
        key: key,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                SizedBox(height: 5,),
                TextFormField(
                  controller: name,
                  validator: (value){
                    if(value.isEmpty){
                      return "Name Field is Empty";
                    }
                      return null;
                  },
                  decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.white)
                  ),
                    filled: true,
                    fillColor: Colors.white,),
                ),
                SizedBox(height: 18,),
                Text("House Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                SizedBox(height: 5,),
                TextFormField(
                  controller: Housename,
                  validator: (value){
                    if(value.isEmpty){
                      return "House Name Field is Empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.white)),
                    filled: true,
                    fillColor: Colors.white,),
                ),
                SizedBox(height: 18,),
                Text("Mobile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                SizedBox(height: 5,),
                TextFormField(
                  controller: Mobile,
                  validator: (value){
                    if(value.isEmpty){
                      return "Mobile Number Field is Empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.white)),),
                ),
                SizedBox(height: 25,),
                GestureDetector(
                  onTap: (){
                    if(key.currentState.validate()){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>address(naam: widget.nam,)));
                    }
                  },
                  child: Center(
                    child: Container(
                      height: 40,
                      width: 270,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.indigo[900]),
                      child: Center(child: Text("SUBMIT",style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
