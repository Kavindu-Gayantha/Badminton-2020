// import 'dart:html';

import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      color:Colors.greenAccent,
      title:'badminton-app',
      home: new MyApp(),

    )
    );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
      child:new Center( 
        child:new Text(
            "welcome UOK Badminton",
            textDirection:TextDirection.ltr,
            style:new TextStyle(
              fontWeight:FontWeight.bold,
              fontStyle:FontStyle.italic,
              fontSize: 30.1,
            
            )
          )
        ),


      );
      
    
  }
}