import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.green,
        child:
        new Scaffold(
          body:
          Column(
            children: <Widget>[
            Text('WELCOME',textDirection: TextDirection.ltr,), 
            Text('to',textDirection: TextDirection.ltr),
            Text('Badminton-2020',textDirection:TextDirection.ltr),
            Text('My App',textDirection:TextDirection.ltr),
            Text('designed by-Kavindu',textDirection:TextDirection.ltr),
            
            // RaisedButton(
            //   onPressed:null,
            //   child:Text('GO to APP',textDirection: TextDirection.ltr,
            //   ),
            //   )     

          ],
          )
        )
        
    );
  }
}