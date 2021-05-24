
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class alert extends StatefulWidget {
  @override
  _alertState createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text("abcd"),
              onPressed: (){
              showDialog(context: context,
              builder: (BuildContext context){
                return Simple_dialog('kozhikode');
              });
              })

        ],
      ),
    );
  }
}
class Simple_dialog extends StatelessWidget {
  final title;
  Simple_dialog(this.title);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(title),
     // title: Text("Alert"),
     // actions: [
      //  new FlatButton(onPressed: (){Navigator.of(context).pop();}, child: Text("okey"))
      //],
    );
  }
}
