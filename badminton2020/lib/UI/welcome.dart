

// import 'dart:io';

// import 'package:badminton2020/UI/LoginScreen/login.dart';
import 'package:badminton2020/UI/Tabs/homepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'badminton',
      home:Scaffold( 
        body: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/badminton.jpg"),
            fit: BoxFit.cover)
        ),
        
      child: Scaffold(
        body:new Column( 
          
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
          // Decoration(BoxDecoration),
          Text('Welcome',textDirection: TextDirection.ltr,),
          Text('To',textDirection: TextDirection.ltr),
          Text('UOK BADMINTON-2020',textDirection: TextDirection.ltr),
          Text('Attendance marking APP',textDirection: TextDirection.ltr),
          RaisedButton(
            onPressed: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => welcomescreen()),
              );
            },
            child:Text('GO to APP'),
            textTheme: ButtonTextTheme.accent,
            textColor: Colors.blue,
            ),
          
          Text('or'),
          RaisedButton(
            onPressed:null,
            child: Text('CLOSE APP'),
            textColor: Colors.redAccent,
          )
         
        ],
      ),
      ),
    ),
    ),
    );
      
    
  }
}