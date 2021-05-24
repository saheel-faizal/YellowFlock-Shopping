import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yellow_app/API%20Login/SignUpClass.dart';
import 'package:yellow_app/Signin%20with%20password/signin.dart';
import 'package:yellow_app/home/bottomnav_home.dart';
import 'package:yellow_app/signin_pages/signin_home.dart';
import 'package:http/http.dart'as http;

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  //-----Form Key---------
  final key = GlobalKey<FormState>();

  //------Controllers-------
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController mobilecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController confirmpasscontroller = new TextEditingController();


  //------Data Fetch------

  void signup(BuildContext context)async{

    var client=http.Client();

    String email=emailcontroller.text;
    String name=namecontroller.text;
    String mobile=mobilecontroller.text;
    String pass=passwordcontroller.text;
    
    var jsonresponse= await client.post("https://ecom.cybaze.com/yellowflock-api/sign_up",
    body: {
      "name":name,
      "mobile":mobile,
      "email":email,
      "password":pass,
      "fcm_id":"545455asdas",
      "is_android":"1",

    });

    if(jsonresponse.statusCode==200){
      var response=await SignUpApi.fromJson(jsonDecode(jsonresponse.body));
      if(response.error){
        print('registration failed');
      }else
        print(response.message);
        print('registration success');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_nav_home()));
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Image.asset(
                'IMAGES/logo.png',
                height: 100,
              ),
              SizedBox(
                height: 75,
              ),
              Container(
                  child: Text(
                "SignUp",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 1),
              )),
              Container(
                child: TextFormField(
                  controller: namecontroller,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, bottom: 25),
                    hintText: "Name",
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: mobilecontroller,
                  validator: (value) {
                    if (value.isEmpty && value.length<10) {
                      return "Please enter valid mobile number ";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, bottom: 25),
                      hintText: "Mobile Number"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailcontroller,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "please enter your email address";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, bottom: 25),
                      hintText: "Email"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: TextFormField(
                  obscureText: true,
                  controller: passwordcontroller,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "please enter your password";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, bottom: 25),
                      hintText: "Password"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Container(
              //   child: TextFormField(
              //     controller: confirmpasscontroller,
              //     validator: (value) {
              //       if (value.isEmpty) {
              //         return "please confirm your password";
              //       }
              //       return null;
              //     },
              //     decoration: InputDecoration(
              //         contentPadding: EdgeInsets.only(left: 10, bottom: 25),
              //         hintText: "Confirm Password"),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    signup(context);
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white, fontSize: 18, letterSpacing: 2),
                    )),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.95,
                    decoration: BoxDecoration(
                        color: Color(0xff130f40),
                    borderRadius: BorderRadius.circular(11.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(child: Text('Already have an account?'),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Signin_home()));
                      },
                      child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xff130f40),
                            borderRadius: BorderRadius.circular(11.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 10),),
                        ),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
