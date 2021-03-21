import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yellow_app/home/bottomnav_home.dart';



class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  //form key
  final otpcheck=GlobalKey<FormState>();

  FocusNode pin2;
  FocusNode pin3;
  FocusNode pin4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2 =FocusNode();
    pin3 =FocusNode();
    pin4 =FocusNode();
  }

  @override
  void dispose() {
    pin2.dispose();
    pin3.dispose();
    pin4.dispose();

    // TODO: implement dispose
    super.dispose();

  }

  void NextOtpFiled({String value,FocusNode focusNode}){
    if(value.length==1){
      focusNode.requestFocus();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white, elevation: 0.0,
          leading: Icon(Icons.chevron_left,color: Colors.black,size: 40,),),
        body: ListView(
            children: [Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
              children: [SizedBox(height: 80,),
                Text("Enter OTP",style: TextStyle(fontSize: 20),),SizedBox(height: 15,),
                Icon(Icons.message,size: 50,),SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: otpcheck,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: 60,height: 60,
                          child: TextFormField(
                              autofocus: true,
                              validator: (value){
                                if(value.isEmpty){
                                  return "*";
                                }
                                else{
                                  return null;
                                }
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1)
                              ],
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                              ),
                              onChanged: (value){
                                NextOtpFiled(value: value,focusNode: pin2);
                              }

                          ),
                        ),
                        Container(width: 60,height: 60,
                          child: TextFormField(
                            validator: (value){
                              if(value.isEmpty){
                                return "*";
                              }
                              else{
                                return null;
                              }
                            },
                            focusNode: pin2,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                            ),
                            onChanged: (value){
                              NextOtpFiled(value: value,focusNode: pin3);
                            },
                          ),
                        ),
                        Container(width: 60,height: 60,
                          child: TextFormField(
                            focusNode: pin3,
                            validator: (value){
                              if(value.isEmpty){
                                return "*";
                              }
                              else{
                                return null;
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                            ),
                            onChanged: (value){
                              NextOtpFiled(value: value,focusNode: pin4);
                            },

                          ),
                        ),
                        Container(width: 60,height: 60,
                          child: TextFormField(
                            focusNode: pin4,
                            validator: (value){
                              if(value.isEmpty){
                                return "*";
                              }
                              else{
                                return null;
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                            ),

                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You will recevie your OTP in ",style: TextStyle(color: Colors.grey),),
                    TweenAnimationBuilder(tween: Tween(begin: 30.0,end: 0),
                        duration: Duration(seconds:30),
                        builder: (context,value,child)=>Text("00:${value.toInt()}"))
                  ],
                ),

              ],
            ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    if(otpcheck.currentState.validate()){
                      Navigator.push((context), MaterialPageRoute(builder: (context) => Bottom_nav_home()));
                    }

                  },
                  child: Container(
                    width: 50,height:50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.indigo[900]),
                    child: Center(child: Text("Verify",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(child: Text("Didn't recevie a OTP? Resend OTP"))
            ] )
    );
  }
}
