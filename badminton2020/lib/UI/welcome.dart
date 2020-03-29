

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
          Text('Welcome',textDirection: TextDirection.ltr,),
          Text('To',textDirection: TextDirection.ltr),
          Text('UOK BADMINTON-2020',textDirection: TextDirection.ltr),
          Text('Attendance marking APP',textDirection: TextDirection.ltr),
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