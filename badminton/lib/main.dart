
import 'package:flutter/material.dart';

void main(){
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'badminton attendance marking app',
      color: Colors.green,
      home:( 
      Center(
        child:Column(
          children: <Widget>[
          Text('WELCOME to Badminton attendance marking App'),
          RaisedButton(
            onPressed: null,
            child:Center(
              child:Text('Go to App'),
            ),
          )

        ],
        ) 
        )
      ),
      
      

      
    
    );
  }
}
