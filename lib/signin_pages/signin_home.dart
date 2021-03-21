import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yellow_app/Checkout/Checkout.dart';
import 'package:yellow_app/Signin%20with%20password/signin.dart';
import 'package:yellow_app/signin_pages/SigningwithOTP.dart';
import 'package:yellow_app/signup%20form/signupform.dart';
class Signin_home extends StatefulWidget {
  @override
  _Signin_homeState createState() => _Signin_homeState();
}

class _Signin_homeState extends State<Signin_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
          Padding(
          padding: const EdgeInsets.only(left: 20,right:20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150,),
              Center(child: Image.asset('IMAGES/logo.png',height: 120,)),
              SizedBox(height: 10,),
              Center(child: Text("Signin",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15),)),
              SizedBox(height: 70,),
              Text("Welcome Back!",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),),
              SizedBox(height: 10,),
              Text("Login back to your account",style: TextStyle(fontSize: 10,)),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200]),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.start,

                  decoration: InputDecoration(
                    hintText: "       Mobile Number",
                    border: InputBorder.none,
                    hoverColor: Colors.blueGrey[200]

                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: (){
                  Navigator.push((context), MaterialPageRoute(builder: (context) => Otp()));
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.indigo[900],),
                  child: Center(child: Text("Signin With OTP",style:TextStyle(color: Colors.white,)),
                ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 145),
                child: Text("or"),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: (){
                  Navigator.push((context), MaterialPageRoute(builder: (context) => signinpassword()));
                },
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> signinpassword()));
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.95,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.indigo[900]),
                    child: Center(child: Text("Signin With Password",style:TextStyle(color: Colors.white)),
                  ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont't you have an account?",style: TextStyle(fontSize: 11,),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupForm()));
                    },
                    child: Container(
                      height: 23,
                      width: 50,
                      decoration: BoxDecoration(color: Colors.indigo[900],borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text("Signup",style: TextStyle(color: Colors.white,fontSize: 11,),)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(child: Text("Continue without Login",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),)),

            ],
          ),
        ),
    ],
      ),
    );
  }
}
