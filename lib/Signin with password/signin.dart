
import 'package:flutter/material.dart';
import 'package:yellow_app/home/bottomnav_home.dart';
import 'package:yellow_app/signup%20form/signupform.dart';
class signinpassword extends StatefulWidget {
  @override
  _signinpasswordState createState() => _signinpasswordState();
}

class _signinpasswordState extends State<signinpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 100,),
              Center(child: Image.asset("IMAGES/logo.png",height: 100,width: 300,)),
              SizedBox(height: 10,),
              Text("Sign in",style: TextStyle(fontSize: 30),),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(



                      labelText:"Mobile number"
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText:"Password"
                  ),
                ),
              ),
              SizedBox(height: 40,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_nav_home()));
                },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.indigo[900]),
                  height: 35,
                  width: 350,
                  //color: Colors.indigo,
                  child: Center(child: Text("Signin",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ),
              SizedBox(height: 40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?"),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupForm()));
                    },
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.indigo[900]),
                      width: 60,
                      // color: Colors.indigo,
                      child: Center(child: Text("Signup",style: TextStyle(color: Colors.white),)),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

