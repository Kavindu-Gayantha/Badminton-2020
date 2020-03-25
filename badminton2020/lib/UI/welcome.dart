import 'package:flutter/material.dart';

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