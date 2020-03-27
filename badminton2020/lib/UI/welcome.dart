

import 'package:badminton2020/UI/LoginScreen/login.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
      child:new Column( 
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
          Text('Welcome'),
          Text('To'),
          Text('UOK BADMINTON-2020'),
          Text('Attendance marking APP'),
          RaisedButton(
            onPressed: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Login()),
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
    );
      
    
  }
}